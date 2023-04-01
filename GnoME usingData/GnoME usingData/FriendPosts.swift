//
//  FriendPosts.swift
//  GnoME usingData
//
//  Created by user232149 on 4/1/23.
//

/*import SwiftUI


    
    

    let friendPosts : [String: Any] = [
                        "friends": [
                          [
                            "userName": "Naysa",
                            "profilePic": "Naysa",
                            "time": "10:00 AM",
                            "date": "2023-04-01",
                            "answer": "Just had the best coffee of my life!",
                            "likes": 15,
                            "comments": [
                              [
                                "userName": "Niyati",
                                "profilePic": "Niyati",
                                "commentText": "Which coffee shop did you go to?",
                                "time": "10:15 AM",
                                "date": "2023-04-01",
                                "likes": 3
                              ],
                              [
                                "userName": "Jackson",
                                "profilePic": "Jackson",
                                "commentText": "I'm not a fan of coffee, but glad you enjoyed it!",
                                "time": "10:30 AM",
                                "date": "2023-04-01",
                                "likes": 1
                              ]
                            ]
                          ],
                          [
                            "userName": "Niyati",
                            "profilePic": "Niyati",
                            "time": "2:30 PM",
                            "date": "2023-03-31",
                            "answer": "Just finished a long hike!",
                            "likes": 20,
                            "comments": [
                              [
                                "userName": "Jackson",
                                "profilePic": "Jackson",
                                "commentText": "Sounds like a great workout!",
                                "time": "3:00 PM",
                                "date": "2023-03-31",
                                "likes": 2
                              ],
                              [
                                "userName": "Naysa",
                                "profilePic": "Naysa",
                                "commentText": "Which trail did you take?",
                                "time": "3:15 PM",
                                "date": "2023-03-31",
                                "likes": 5
                              ]
                            ]
                          ],
                          [
                            "userName": "Jackson",
                            "profilePic": "Jackson",
                            "time": "6:00 PM",
                            "date": "2023-03-30",
                            "answer": "Just tried a new Thai restaurant!",
                            "likes": 10,
                            "comments": [
                              [
                                "userName": "Naysa",
                                "profilePic": "Naysa",
                                "commentText": "Which dish did you like the most?",
                                "time": "6:15 PM",
                                "date": "2023-03-30",
                                "likes": 3
                              ],
                              [
                                "userName": "Niyati",
                                "profilePic": "Niyati",
                                "commentText": "I love Thai food! I'll have to check it out.",
                                "time": "6:30 PM",
                                "date": "2023-03-30",
                                "likes": 1
                              ]
                            ]
                          ]
                        ]
                      ]
    
    
struct FriendPosts: View {
    var body: some View {
        List {
            ForEach(friendPosts["friends"] as? [[String: Any]] ?? [], id: \.self) { friendPost in
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Image(friendPost["profilePic"] as? String ?? "")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        
                        Text(friendPost["userName"] as? String ?? "")
                            .font(.headline)
                        
                        Spacer()
                        
                        Text(friendPost["time"] as? String ?? "")
                            .font(.subheadline)
                        
                        Text(friendPost["date"] as? String ?? "")
                            .font(.subheadline)
                    }
                    
                    Text(friendPost["answer"] as? String ?? "")
                    
                    HStack {
                        Image(systemName: "heart")
                            .foregroundColor(.red)
                        
                        Text("\(friendPost["likes"] as? Int ?? 0) likes")
                        
                        Spacer()
                        
                        Text("\(friendPost["comments"]?.count as? Int ?? 0) comments")
                    }
                    
                    ForEach(friendPost["comments"] as? [[String: Any]] ?? [], id: \.self) { comment in
                        VStack(alignment: .leading, spacing: 10) {
                            HStack {
                                Image(comment["profilePic"] as? String ?? "")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .clipShape(Circle())
                                
                                Text(comment["userName"] as? String ?? "")
                                    .font(.headline)
                                
                                Spacer()
                                
                                Text(comment["time"] as? String ?? "")
                                    .font(.subheadline)
                                
                                Text(comment["date"] as? String ?? "")
                                    .font(.subheadline)
                            }
                            
                            Text(comment["commentText"] as? String ?? "")
                            
                            HStack {
                                Image(systemName: "heart")
                                    .foregroundColor(.red)
                                
                                Text("\(comment["likes"] as? Int ?? 0) likes")
                                
                                Spacer()
                            }
                        }
                    }
                }
                .padding()
            }
        }
    }
}

struct FriendPosts_Previews: PreviewProvider {
    static var previews: some View {
        FriendPosts()
    }
}*/
