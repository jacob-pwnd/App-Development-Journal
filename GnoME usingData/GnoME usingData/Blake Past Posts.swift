//
//  Blake Past Posts.swift
//  GnoME usingData
//
//  Created by user232149 on 4/1/23.
//

import SwiftUI




struct Blake_Past_Posts: View {
    let data: [String: [[String: Any]]] = [
        "2022-03-31":
            [
                [
                    "userName": "Alice",
                    "profilePic": "ProfilePic1",
                    "time": "10:00",
                    "date": "2022-03-31",
                    "answer": "Answer 1",
                    "likes": 10,
                    "comments":
                        [
                            [
                                "userName":"Bob",
                                "profilePic":"ProfilePic2",
                                "commentText": "Comment 1"
                            ]
                        ]
                        ],
                        [
                            "userName": "Charlie",
                            "profilePic": "ProfilePic3",
                            "time": "11:00",
                            "date": "2022-03-31",
                            "answer": "Answer 2",
                            "likes": 5,
                            "comments": []
                                                                      
                        ]
                                                             
            ],
                                               
        "2022-04-01":
            [
                [
                    "userName": "Dave",
                    "profilePic": "ProfilePic4",
                    "time": "09:00",
                    "date": "2022-04-01",
                    "answer": "Answer 3",
                    "likes": 2,
                    "comments": []
                                                                      
                ],
                                                                      
                [
                    "userName": "Eve",
                    "profilePic": "ProfilePic5",
                    "time": "10:00",
                    "date": "2022-04-01",
                    "answer": "Answer 4",
                    "likes": 1,
                    "comments":
                        [
                            [
                                "userName": "Frank",
                                "profilePic": "ProfilePic6",
                                "commentText": "Comment 2"
                            ],
           
                            [
                                "userName": "Grace",
                                "profilePic": "ProfilePic7",
                                "commentText": "Comment 3"
                            ]
                        ]
                            ]
                                ]
    ]
    
    func renderPost(_ post: [String: Any]) -> some View {
        VStack {
            HStack {
                Image(post["profilePic"] as! String)
                    .frame(width: 50, height: 50)
                VStack(alignment: .leading) {
                    Text(post["userName"] as! String)
                        .font(.headline)
                    Text("\(post["time"]!) - \(post["date"]!)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            .padding(.trailing, 100)
            
            Text(post["answer"] as! String)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal, 8)
                .padding(.leading, 25)
            
            HStack {
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
                Text("\(post["likes"]!)")
                
                Button(action: {
                    // Add comment
                }) {
                    Image(systemName: "message.fill")
                }
                
                Text("\(post["comments"]!.count)")
            }
            .padding(.leading, 200)
        }
    }
    
    
    var body: some View {
           ScrollView {
               VStack {
                   ScrollView {
                       ForEach(Array(data.keys.sorted()), id: \.self) { date in
                           Text(date)
                               .font(.largeTitle)
                           ForEach(Array(data[date]!), id: \.self) { post in
                               VStack {
                                   HStack {
                                       Image(post["profilePic"]! as! String)
                                           .frame(width: 50, height: 50)
                                       VStack(alignment: .leading) {
                                           Text(post["userName"]! as! String)
                                               .font(.headline)
                                           Text("\(post["time"]! as! String) - \(post["date"]! as! String)")
                                               .font(.subheadline)
                                               .foregroundColor(.gray)
                                       }
                                   }
                                   .padding(.trailing, 100)
                                   
                                   Text(post["answer"]! as! String)
                                       .font(.title)
                                       .fontWeight(.bold)
                                       .foregroundColor(.white)
                                       .padding()
                                       .padding(.horizontal, 8)
                                       .padding(.leading, 25)
                                   
                                   HStack {
                                       Image(systemName: "heart.fill")
                                           .foregroundColor(.red)
                                       Text("\(post["likes"]! as! Int)")
                                       
                                       Button(action: {
                                           // Add comment
                                       }) {
                                           Image(systemName: "message.fill")
                                       }
                                       
                                       Text("\(post["comments"]!.count as! Int)")
                                   }
                                   .padding(.leading, 200)
                               }
                           }
                       }
                   }
               }
           }
       }
   }
struct Blake_Past_Posts_Previews: PreviewProvider {
    static var previews: some View {
        Blake_Past_Posts()
    }
}
