//
//  Sentiment.swift
//  OpenAI
//
//  Created by user232149 on 4/10/23.
//

import OpenAIKit
import SwiftUI

final class SentimentAnalyzer: ObservableObject {
    private var openai: OpenAI?
    
    func setup() {
        openai = OpenAI(Configuration(
            organizationId: "Personal",
            apiKey: "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"
        ))
    }
    
    func analyzeSentiment(prompt: String) async -> String? {
        guard let openai = openai else {
            return nil
        }
        do {
            let parameters = CompletionParameters(model: "text-davinci-003", prompt: ["Decide whether a Tweet's sentiment is positive, neutral, or negative. \n\nTweet: \"\(prompt)\""], maxTokens: 60, temperature: 0, topP: 1.0, presencePenalty: 0.0, frequencyPenalty: 0.5)
            let response = try await openai.generateCompletion(parameters: parameters)
            return String(response.choices.first?.text ?? "Something went wrong")
            
        } catch {
            print(error)
        }
        return ""
    }
}


struct Sentiment: View {
    @State var sentimentResult = ""
    @State var sentiment = ""
    @ObservedObject var sentimentAnalyzer = SentimentAnalyzer()
    
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Divider()
               
                
              TextField("Enter text to analyze", text: $sentiment)
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
         
            }
            .padding()
            .navigationTitle("OpenAI API Demos")
        }
        .onAppear{
           sentimentAnalyzer.setup()
            //sets up API in all the classes when app starts
        }
    }
}

struct Sentiment_Previews: PreviewProvider {
    static var previews: some View {
        Sentiment()
    }
}
