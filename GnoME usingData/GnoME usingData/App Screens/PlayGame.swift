//
//  PlayGame.swift
//  GnoME usingData
//
//  Created by user232149 on 4/2/23.
//

import SwiftUI

//Add data for users
let users: [Int: [String: Any]] = [
    1: ["name": "Alice", "profilePic": "alice.png", "answer": "I love hiking"],
    2: ["name": "Bob", "profilePic": "bob.png", "answer": "I enjoy playing video games"],
    3: ["name": "Charlie", "profilePic": "charlie.png", "answer": "I am a fan of cooking"],
    4: ["name": "Dave", "profilePic": "dave.png", "answer": "I like watching movies"],
    5: ["name": "Eve", "profilePic": "eve.png", "answer": "I enjoy travelling"],
    6: ["name": "Frank", "profilePic": "frank.png", "answer": "I am a fitness enthusiast"],
    7: ["name": "Grace", "profilePic": "grace.png", "answer": "I like reading books"],
    8: ["name": "Henry", "profilePic": "henry.png", "answer": "I am passionate about music"],
    9: ["name": "Isabelle", "profilePic": "isabelle.png", "answer": "I am an artist"],
    10: ["name": "Jack", "profilePic": "jack.png", "answer": "I love playing sports"],
    11: ["name": "Kelly", "profilePic": "kelly.png", "answer": "I enjoy photography"],
    12: ["name": "Larry", "profilePic": "larry.png", "answer": "I am a big fan of comedy"],
    13: ["name": "Mia", "profilePic": "mia.png", "answer": "I love trying new foods"],
    14: ["name": "Nathan", "profilePic": "nathan.png", "answer": "I enjoy playing guitar"],
    15: ["name": "Olivia", "profilePic": "olivia.png", "answer": "I am interested in fashion"],
    16: ["name": "Paul", "profilePic": "paul.png", "answer": "I am an entrepreneur"],
    17: ["name": "Quinn", "profilePic": "quinn.png", "answer": "I love spending time with my pets"],
    18: ["name": "Rachel", "profilePic": "rachel.png", "answer": "I enjoy painting"],
    19: ["name": "Steve", "profilePic": "steve.png", "answer": "I am a computer programmer"],
    20: ["name": "Tina", "profilePic": "tina.png", "answer": "I love dancing"]
]


struct PlayGame: View {
    @State private var selectedUser: [String: Any]?


    var body: some View {
        //Pick random 10 users/friends
        let userKeys = users.keys.shuffled().prefix(10)
        let selectedUsers = userKeys.compactMap { users[$0] }
        let userNames = selectedUsers.map { $0["name"] as! String }.joined(separator: ", ")
        ScrollView{
            VStack (alignment: .center) {
                Spacer()
                Spacer()
                Text("Selected users: \n \(userNames)")
                
                
            }
        }
    }
}
    

struct PlayGame_Previews: PreviewProvider {
    static var previews: some View {
        PlayGame()
    }
}
//pick random 10,
//timer
//show question
//show answers
//show picker on each answer with friends as option
//submit button
//results
