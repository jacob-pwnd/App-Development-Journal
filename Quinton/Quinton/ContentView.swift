//
//  ContentView.swift
//  Quinton
//1-3x logos for devices
//  Created by admin on 1/25/23.
//

import SwiftUI

struct ContentView: View {
   var weatherManager = WeatherManager()
    @State var weather: ResponseBody?
    
    var body: some View {
       
                ZStack {
                    Image("background1")
                        .resizable()
                        .ignoresSafeArea()
                    
                    VStack {
                        Spacer()
                        Image("clearday")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.bottom, 20)
                        Spacer()
                        if let weather = weather {
                            Text(weather.name)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .padding(.all, 12.0)
                                .background(Color(hue: 1.0, saturation: 0.804, brightness: 0.508))
                                .cornerRadius(20)
                                .padding(.bottom, 50)//Location Name
                            
                            HStack {
                                Text(String(format: "%.1f", weather.main.feelsLike))
                                    .fontWeight(.heavy)
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                    
                                
                                Text("℉")
                                    .fontWeight(.heavy)
                                    .foregroundColor(.white)
                                    .font(.subheadline)
                                    .padding(.bottom, 10)
                            }// Temperature
                            .padding(10.0)
                            .background(Color(hue: 1.0, saturation: 0.804, brightness: 0.508))
                            .cornerRadius(20)
                        } else {
                            ProgressView()
                        }
                        
                        
                        ZStack{
                            Rectangle()
                                .fill(Color(.gray))
                                .frame(height: 55)
                                
                                
                            if let weather = weather {
                                Text(weather.weather.first?.description.capitalized ?? "")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                    
                                   
                            }//Description
                         
                        }
                    }
                }
                .onAppear {
                    Task.init {
                        do {
                            let weatherData = try await weatherManager.getCurrentWeather(latitude: 30.62798, longitude: -96.33441)
                            weather = weatherData
                        } catch {
                            print("Error fetching weather data: \(error.localizedDescription)")
                        }
                    }
                }
            }
            

      struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
