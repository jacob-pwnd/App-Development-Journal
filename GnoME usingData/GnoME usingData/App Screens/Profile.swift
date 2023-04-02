//
//  Profile.swift
//  GnoME usingData
//
//  Created by user232149 on 4/1/23.
//

import SwiftUI


struct Profile: View {
    
    let profile: [String: Any] = [
                   "name": "Blake Dolenski",
                   "userName": "blakedolenski_02",
                   "pronouns": "he/him",
                   "mushrooms": 128,
                   "bio": "WaLLeR diDn'T aCtuUally haVe InTErnet unTiL LaSt yEar",
                   "profilePic": "Blake",
                 ]
               

    
    var body: some View {
        ZStack{
       
            Color(red: 0.19215686274509805, green: 0.3607843137254902, blue: 0.32941176470588235).edgesIgnoringSafeArea(.all)
            //Background
            
            ZStack(alignment: .top) {
                ScrollView {
                    VStack(spacing: 20) {
                        
                        HStack{
                            VStack{
                                Image((profile["profilePic"]!) as! String)
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .padding(.leading)
                            Text("You")
                                    .foregroundColor(.white)
                                    .padding(.top, -3.0)
                            }//Pic and You

                            VStack (alignment: .leading) {
                                HStack (alignment: .bottom) {
                                    Text((profile["name"]!) as! String)
                                        .font(.title)
                                        .foregroundColor(.white)
                                    Text((profile["pronouns"]!) as! String)
                                                                   .foregroundColor(.white)
                                                               
                                }//Name and Pronouns
                                Text("@" + ((profile["userName"]!) as! String))
                                Divider()
                                    .frame(height: 3)
                                    .background(Color.red)
                                    .padding(.trailing)
                            }//Name and Pronouns and UserName
                           

                        }//end of Pic and Username
                        HStack{
                            Image("Mushroom 1")
                            Text("\(profile["mushrooms"] as! Int)")
                                .font(.largeTitle)
                           
                        }
                        .padding(.vertical, -30.0)//Mushrooms
                        
                        Divider()
                            .frame(height: 3)
                            .background(Color.red)
                            .padding(.horizontal)
                        VStack{
                            
                            Text("One thing I want people to Gno about me is...\n" + ((profile["bio"]!) as! String))
                                .font(.title2)
                        }
                        .padding(.horizontal)
                        Divider()
                            .frame(height: 3)
                            .background(Color.red)
                            .padding(.horizontal)
                        //Divider After Bio
                        Old_Post_1()
                        Old_Post_2()
                        Old_Post_3()
                        
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

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
