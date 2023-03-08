//
//  ContentView.swift
//  Quinton
//1-3x logos for devices
//  Created by admin on 1/25/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //Dowload assets <---
       // Image and text are stucture(Before Dot) use quick help on the right to check. Structures have properties
        //Click + on top right to get stuff
        ZStack {
            Image("background1").resizable()
                .ignoresSafeArea()
            
            LazyVStack {
                Spacer()
                Image("clearday").resizable()
                    .aspectRatio(contentMode: .fit)
                    
                
                Spacer()
                HStack {
                    Text("Today's Weather")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .font(.largeTitle)
                        
                    //how to do farenheit
                    Text("33")
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .font(.largeTitle)
            
                    Text("℉")
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .font(.subheadline)
                        .padding(.bottom, 9.0)
                    
                }.padding()
                    .background(Color(hue: 0.896, saturation: 0.552, brightness: 0.72, opacity: 0.432))
                    .cornerRadius(20)

                
                Spacer()
                Text("Brr so cold")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .padding()        }
                
            }

            
            
        
        //containers can be used to show multiple UI elements. Z stacks- on top of each other, V Stack- H Stack-
    
        /*Text("Prepare to taste my blade")
            .font(.largeTitle)
            .foregroundColor(Color.white)
            .padding(50)
            .background(Color.pink)*/
        
    }
  //preview will not be made intp app. It tells you what you are previewing on the right
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
