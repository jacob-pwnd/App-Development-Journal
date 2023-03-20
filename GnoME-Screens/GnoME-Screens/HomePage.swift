//
//  Sign Up-1.swift
//  GnoME-Screens
//
//  Created by admin on 3/14/23.
//

import SwiftUI

struct HomePage: View {
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
            .padding(.top, 50)
            .padding(.bottom, 20)
            
            
            LazyVStack
            {
                ZStack{
                    Rectangle()
                        .fill(Color(hue: 0.076, saturation: 0.72, brightness: 0.924))
                        .frame(width:375, height:100)
                        .cornerRadius(15)
                    Text("What's your biggest fear?")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(.trailing, 40)
                    //make left aligned
                    
                }//end of Question Z Stack
                
                
//user response- make JSON and add logic later
                ZStack{
                    Rectangle()
                        .fill(Color(hue: 0.052, saturation: 0.964, brightness: 0.968))
                        .frame(width:375, height:135)
                        .cornerRadius(15)
                    VStack{
                        HStack{
                            Image("User")
                            Text("Blake Dolenski")
                                .font(.system(size: 23))

                        }
                        .padding(.trailing, 100)
                        Text("I am most afraid of failure")
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.vertical, -6.0)
                        HStack{
                            Text("View Comments")
                                .padding(.trailing, 135.0)
                            Text("2")
                            Image("Like Button")
                        }
                    }
                }//end of User Response
                
//friend post 1
                ZStack{
                    Rectangle()
                        .fill(Color.white)
                        .frame(width:375, height:135)
                        .cornerRadius(15)
                    VStack{
                        HStack{
                            Image("Profile Pic-1")
                            Text("Naysa Alex")
                                .font(.system(size: 23))
                        }
                        .padding(.trailing, 145)
                        Text("Spiders scare me.")
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
                }//end of Friend Response
                
//friend post 2
                ZStack{
                    Rectangle()
                        .fill(Color.white)
                        .frame(width:375, height:135)
                        .cornerRadius(15)
                    VStack{
                        HStack{
                            Image("Profile Pic")
                            Text("Hannah Bang")
                                .font(.system(size: 23))
                        }
                        .padding(.trailing, 130)
                        Text("I'm afraid of the dark")
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                            .padding([.top, .bottom, .trailing], -6.0)
                        HStack{
                            Text("View Comments")
                                .padding(.trailing, 135.0)
                            Text("31")
                            Image("Like Button")
                        }
                    }
                    
                }//end of Friend Response
                
//friend post 3
                ZStack{
                    Rectangle()
                        .fill(Color.white)
                        .frame(width:375, height:125)
                        .cornerRadius(15)
                    VStack{
                        HStack{
                            Image("Jacob")
                            Text("Jacob Rodriguez")
                                .font(.system(size: 23))
                        }
                        .padding(.trailing, 85)
                        Text("Nothing scares me")
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                            .padding([.top, .bottom, .trailing], -6.0)
                        HStack{
                            Text("View Comments")
                                .padding(.trailing, 135.0)
                            Text("15")
                            Image("Like Button")
                        }
                    }
                    
                }//end of Friend Response
            }// End of Lazy VStack

        }//end of VStack
        .background(Color(hue: 0.116, saturation: 0.076, brightness: 0.964))
    }
  
}

struct Sign_Up_1_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
