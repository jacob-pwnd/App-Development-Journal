//
//  ContentView.swift
//  OpenAI
//
//  Created by user232149 on 4/7/23.
//

import OpenAIKit
import SwiftUI



final class ViewModel: ObservableObject {
    private var openai: OpenAI?
    
    func setup() {
         openai = OpenAI(Configuration(
            organizationId: "Personal",
            apiKey: ""
        ))
    }
    
    func generateImage(prompt: String) async -> UIImage? {
        guard let openai = openai else {
            return nil
        }
        do {
            let params = ImageParameters(
                prompt: prompt,
                resolution: .medium,
                responseFormat: .base64Json
            )
            let result = try await openai.createImage(
                parameters: params
            )
            let data = result.data[0].image
            let image = try openai.decodeBase64Image(data)
            return image
        }
        catch{
            print(String(describing: error))
            return nil
        }
    }
}

final class CompleteSentence: ObservableObject {
    private var openai: OpenAI?
    
    func setup() {
         openai = OpenAI(Configuration(
            organizationId: "Personal",
            apiKey: ""
        ))
    }
    func generateSentence(prompt: String) async -> String? {
        guard let openai = openai else {
            return nil
        }
        do {
            let completionParameter = CompletionParameters(
                model: "text-davinci-001",
                prompt: ["prompt"],
                maxTokens: 4,
                temperature: 0.98
            )
            let completionResponse = try await openai.generateCompletion(
                parameters: completionParameter
            )
            let responseText = completionResponse.choices[0].text
            return responseText
        } catch{
            print(String(describing: error))
            return nil
        }
    }
}

final class SentimentAnalyzer: ObservableObject {
    private var openai: OpenAI?
    
    func setup() {
        openai = OpenAI(Configuration(
            organizationId: "your_org_id",
            apiKey: "your_api_key"
        ))
    }
    
    func analyzeSentiment(prompt: String) async -> String? {
        guard let openai = openai else {
            return nil
        }
        do {
            let completionParameter = CompletionParameters(
                model: "text-davinci-002",
                prompt: ["sentiment analysis:", prompt],
                maxTokens: 1,
                temperature: 0.0,
                stop: ["\n"]
            )
            let completionResponse = try await openai.generateCompletion(
                parameters: completionParameter
            )
            let sentimentValue = completionResponse.choices[0].text.trimmingCharacters(in: .whitespacesAndNewlines)
            return sentimentValue
        } catch {
            print(String(describing: error))
            return nil
        }
    }
}




struct ContentView: View {
    
    @ObservedObject var viewModel = ViewModel()
    @ObservedObject var completeSentence = CompleteSentence()
    @State var text = ""
    @State var sentence = ""
    @State var image: UIImage?
    /*
    @State var sentimentResult = ""
    @State var sentiment = ""
    @ObservedObject var sentimentAnalyzer = SentimentAnalyzer()
    */
    
    var body: some View {
        NavigationView {
            VStack {
                if let image = image {
                    Image(uiImage: image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250, height: 250)
                }
                
                Spacer()
                
                TextField("Type image prompt here...", text: $text)
                    .padding()
                
                Button("Generate Image") {
                    if !text.trimmingCharacters(in: .whitespaces).isEmpty {
                        Task {
                            let result = await viewModel.generateImage(prompt: text)
                            if result == nil {
                                print("Failed to get image")
                            }
                            
                            self.image = result
                        }
                    }
                }
                
                Spacer()
                Divider()
                
                TextField("Type partial sentence here...", text: $sentence)
                    .padding()
                
                Button("Complete Sentence") {
                    if !sentence.trimmingCharacters(in: .whitespaces).isEmpty {
                        Task {
                            let result = await completeSentence.generateSentence(prompt: sentence)
                            if result == nil {
                                print("Failed to complete sentence")
                            }
                            
                            self.sentence = result ?? ""
                        }
                    }
                }
                .padding(.bottom)
                
                Text(sentence)
                
        /*        TextField("Enter text to analyze", text: $sentiment)
                    .padding()
                
                Button("Analyze Sentiment") {
                    if !sentiment.trimmingCharacters(in: .whitespaces).isEmpty {
                        Task {
                            let result = await sentimentAnalyzer.analyzeSentiment(prompt: sentiment)
                            if result == nil {
                                print("Failed to analyze sentiment")
                            }
                            
                            self.sentimentResult = result ?? ""
                        }
                    }
                }
                .padding(.bottom)
                
                Text(sentimentResult)
         */
            }
            .padding()
            .navigationTitle("OpenAI API Demos")
        }
        .onAppear{
            viewModel.setup()
            completeSentence.setup()
           //sentimentAnalyzer.setup()
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

