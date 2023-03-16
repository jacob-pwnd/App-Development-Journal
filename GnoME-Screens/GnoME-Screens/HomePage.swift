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
            .padding(.bottom, 35)
            LazyVStack
            {
                ZStack{
                    Rectangle()
                }
            }
        }
    }
}

struct Sign_Up_1_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
