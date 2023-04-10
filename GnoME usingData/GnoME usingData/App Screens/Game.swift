//
//  Game.swift
//  GnoME usingData
//
//  Created by user232149 on 4/1/23.
//

import SwiftUI

struct Game: View {
    @State private var playGame = false
    
    var body: some View {
        ZStack{
            Color(red: 0.19215686274509805, green: 0.3607843137254902, blue: 0.32941176470588235).edgesIgnoringSafeArea(.all)
            //Background
            
            ZStack(alignment: .top) {
                ScrollView {
                    VStack(spacing: 20) {
                        
//Start the game
                        if playGame {
                            
                           PlayGame()
                            
                        }
//When game hasn't started
                        else {
                            
                            Text("Test how well you Gno your friends")
                                .font(.title)
                                
                            Text("Instructions:\nCan you match 10 of last weeks answers to the correct friends. We've hidden last weeks answers so don't try to cheat! You'll have 5 minutes to finish the game and earn some. Good luck!")
                                .font(.title3)
                                .padding(.horizontal)
                            Spacer()
                            Button(action: {
                                self.playGame = true
                            }, label: {
                                Text("Play")
                            })
                            .frame(width: 200, height: 50)
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            
                        }
                    }
                    .padding(.top, 100) // Leave space for the banner
                }
                
                ZStack{
                    VStack (spacing: 0){
                        Rectangle()
                            .fill(Color(red: 0.9254901960784314, green: 0.9254901960784314, blue: 0.9254901960784314))
                            .frame(height: 70)
                        
                        Rectangle()
                            .fill(Color(red: 0.19215686274509805, green: 0.3607843137254902, blue: 0.32941176470588235))
                            .frame(height: 73)
                    }//Rectangles for Banner
                    .padding(.top, -65)
                    HStack {
                        Image("GnoME")
                        Spacer()
                        Image("Logo")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 65, height: 65)
                    }
                    .padding(.horizontal, 10)
                    .padding(.top, 3)
                }//End of Banner
                
                
            }
        }
    }
}
struct Game_Previews: PreviewProvider {
    static var previews: some View {
        Game()
    }
}


