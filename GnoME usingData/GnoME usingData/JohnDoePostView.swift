//
//  JohnDoePostView.swift
//  GnoME usingData
//
//  Created by user232149 on 3/31/23.
//

import SwiftUI

struct JohnDoePostView: View {
    // Define a variable to hold the post data
    let post: [String: Any] = [
        "profilePic": "https://example.com/profilepic.jpg",
        "userName": "Blake",
        "time": "11:00 AM",
        "date": "2023-03-31",
        "answer": "Interview on Tuesday.",
        "likes": 2,
        "comments": [
            [
                "userName": "Niyati",
                "commentText": "You got this Blake!!!"
            ],
            [
                "userName": "Naysa",
                "commentText": "Excited?!! I get so nervous"
            ],
            [
                "userName": "Jackson",
                "commentText": "He's basically hired"
            ]
        ]
    ]
    
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .fill(.orange)
                    .cornerRadius(30)
                    .padding(.vertical, -20)
                    .padding(.horizontal, -8)
                
                VStack{
                    HStack{
                    // Display profile picture
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.gray)
                    
                    VStack(alignment: .leading) {
                        Text(post["userName"] as! String)
                            .font(.headline)
                        Text("\(post["time"] as! String) - \(post["date"] as! String)")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }// Display username and post time
                }
                .padding(.trailing, 100)
                    
                    
                
                Text(post["answer"] as! String)
                    
                    .padding()
                    .padding(.trailing, 100)
                    // Display post answer

                HStack {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                    Text("\(post["likes"] as! Int)")
                    Image(systemName: "message.fill")
                        .foregroundColor(.blue)
                    Text("\((post["comments"]! as AnyObject).count)")
                }//Comment & Like Count
                .padding(.leading, 200)
            }
        }//Profile Pic, Name, Date, Time, Answer, Likes, Comments
            
            ZStack {
                Rectangle()
                    .fill(.brown)
                    .cornerRadius(25)
                    .padding(-10)
                VStack {
                ForEach(post["comments"] as! [[String: String]], id: \.self) { comment in
                    HStack {
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.gray)
                        VStack(alignment: .leading) {
                            Text(comment["userName"]!)
                                .font(.subheadline)
                            Text(comment["commentText"]!)
                                .font(.subheadline)
                        }
                        Spacer()
                    }
                    }
                }//Comments
            }//Comments with Background
            .padding()
        }
      
        .padding(.bottom, 20)
    }
}

struct JohnDoePostView_Previews: PreviewProvider {
    static var previews: some View {
        JohnDoePostView()
    }
}
