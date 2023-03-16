//
//  ContentView.swift
//  GnoME-Screens
//
//  Created by admin on 3/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack{
                Rectangle()
                    .fill(Color(hue: 0.116, saturation: 0.252, brightness: 0.948))
                    .frame(height:125)
                HStack{
                    Image("name")
                        .padding(.trailing, 110)
                    Image("logo")
                        .padding(.leading)
                }//Name and Logo
            
            }//Name and Logo With Background
            .padding(.bottom, 35)
            
            Text("Welcome. \n Ready to let people Gno you?")
                .font(.system(size: 65))
                .multilineTextAlignment(.center)
                .padding(.bottom, 50)
            
            HStack (alignment: .center){
                Button(action:{
                    //what to perform
                }) {
                    Text("Sign Up")
                        .foregroundColor(.black)
                        .background(Color(hue: 0.084, saturation: 0.288, brightness: 0.816))
                        .font(.system(size: 45))
                        .cornerRadius(15)
                        
                        
                }
                .padding(.trailing, 35)
                Button(action:{
                    //what to perform
                }) {
                    Text("Log In")
                        .foregroundColor(.black)
                        .background(Color(hue: 0.084, saturation: 0.288, brightness: 0.816))
                        .font(.system(size: 45))
                        .cornerRadius(15)
                        
                        
                }
            }
            Spacer()
        }
        //End of VStack
        .background(Color(hue: 0.116, saturation: 0.076, brightness: 0.964))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
