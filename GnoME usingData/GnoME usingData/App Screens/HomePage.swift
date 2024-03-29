//
//  HomePage.swift
//  GnoME usingData
//
//  Created by user232149 on 4/1/23.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        ZStack{
            
            Color(red: 0.19215686274509805, green: 0.3607843137254902, blue: 0.32941176470588235).edgesIgnoringSafeArea(.all)
            //Background
            
            ZStack(alignment: .top) {
                ScrollView {
                    VStack(spacing: 20) {
                        
                        Question()
                        BlakePost()
                        NaysaPost()
                        JacobPost()
                        HannahPost()
                        
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

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
