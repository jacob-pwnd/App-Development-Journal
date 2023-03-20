//
//  Profile.swift
//  GnoME-Screens
//
//  Created by user232149 on 3/19/23.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack{
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
            .padding(.top, 65)
            .padding(.bottom, 10)
            
            HStack{
                VStack{
                    Image("User")
                        .resizable()
                        .frame(width:100, height: 100)
                    Text("You")
                        .fontWeight(.light)
                        .padding(.top, -5.0)
                    
                }
                VStack{
                    HStack{
                        Text("Blake Dolenski")
                            .fontWeight(.bold)
                            .font(.system(size: 25))
                        Text("He/Him")
                            .fontWeight(.light)
                            .padding(.leading, -6.0)
                            .font(.system(size: 15))
                        
                    }
                    Text("@blakedolenski_02")
                        .padding(.trailing, 85)
                }

                
            }//User Name, Pic, Etc.
            HStack{
                Image("Mushroom 1")
                    .resizable()
                    .frame(width:55, height:40)
                Text("100")
                    .fontWeight(.regular)
                    .padding(.horizontal, -9.0)
                    .font(.system(size:35))
                
                VStack{
                    Text("1 Comment")
                    Text("2 likes")
                        .padding(.trailing, 35)
                    
                }
                .padding(.leading, 35.0)
                
            }//Mushrooms and comment/like counter
            .padding(.leading, 60)
            
            HStack{
                Image("Gnome")
                VStack{
                    Text("One thing I want people to Gno about me is...\n")
                    Text("WaLLeR diDn'T aCtUally hAVe InTErnet unTiL LaSt yEar")
                }
            }
            .padding(.leading, 1.0)//Gnome and Fun Fact
            LazyVStack{
                
//Question 1
                ZStack{
                    Rectangle()
                        .fill(Color.white)
                        .frame(width:375, height:130)
                        .cornerRadius(15)
                    VStack{

                        Text("What's your biggest fear?")
                            .font(.system(size:20))
                            .padding(.trailing, 120)
                        Text("I am most adraid of failure.      ")
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                            .padding(.vertical, -6.0)
                        HStack{
                            Text("View Comments")
                                .padding(.trailing, 135.0)
                            Text("33")
                            Image("Like Button")
                        }
                    }
                }//end of Question 1
                .padding(.vertical, 5)
                
                ZStack{
                    Rectangle()
                        .fill(Color.white)
                        .frame(width:375, height:150)
                        .cornerRadius(15)
                    VStack{

                        Text("What's your favorite dance move?")
                            .font(.system(size:20))
                            .padding(.trailing,40)
                        Text("I fake a seizure to get a girl's number once")
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                            .padding(.vertical, -6.0)
                        HStack{
                            Text("View Comments")
                                .padding(.trailing, 135.0)
                            Text("33")
                            Image("Like Button")
                        }
                    }
                }//end of Question 2
                .padding(.vertical, 5)
                
            }//Questions
        }.background(Color(hue: 0.116, saturation: 0.076, brightness: 0.964))
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
