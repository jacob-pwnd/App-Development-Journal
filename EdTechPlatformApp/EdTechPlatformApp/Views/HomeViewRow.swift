//
//  HomeViewRow.swift
//  EdTechPlatformApp
//
//  Created by admin on 3/6/23.
//

import SwiftUI

struct HomeViewRow: View {
    var image: String
    var title: String
    var description: String
    var count: String
    var time: String
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .foregroundColor(.green)
                .cornerRadius(10)
                .shadow(radius: 5)
                .aspectRatio(CGSize(width: 335, height: 175),
                    contentMode: .fit)
            HStack{
                //image
                Image(image)
                    .resizable()
                    .frame(width: 116,height: 116)
                    .clipShape(Circle())
                    .padding(.trailing)
                
                //text
                VStack(alignment:.leading, spacing: 10){
                    //headline
                    Text(title)
                        .bold()
                    //Description
                    Text(description)
                    //icons
                    HStack{
                    //icons
                        //number of lessons
                        Image("driving basics")
                            .resizable()
                            .frame(width: 15,height: 15)
                        //icon text.book.libary
                        Text(count)
                            .font(.caption)
                        
                        //time
                        Image("driving basics")
                            .resizable()
                            .frame(width: 15,height: 15)
                        //icon clock
                        Text(time)
                            .font(.caption)
                        
                    }
                    .padding(.horizontal, 20)
                    
                    
                }//end of VStack
                .padding(.leading, 20)
            }
        }
    }
}

/*struct HomeViewRow_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewRow()
    }
}*/
