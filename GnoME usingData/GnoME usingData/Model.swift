//  Model.swift
//  GnoME usingData
//
//  Created by user232149 on 3/31/23.
//

import Foundation

func getLocalData(){
    guard let url = Bundle.main.url(forResource: "example", withExtension: "json") else {
        fatalError("Unable to find example.json")
    }

    do {
        let data = try Data(contentsOf: url)
        do {
            let json = try JSONSerialization.jsonObject(with: data, options: [])
            if let dictionary = json as? [String: Any] {
                // Access the data from the dictionary object here
                if let questions = dictionary["questions"] as? [String: Any] {
                    if let question = questions["question"] as? String {
                        // Access the question text here
                        print(question)
                    }
                    if let date = questions["date"] as? String {
                        // Access the question date here
                        print(date)
                    }
                    if let time = questions["time"] as? String {
                        // Access the question time here
                        print(time)
                    }
                }
                if let selfPost = dictionary["selfPost"] as? [String: Any] {
                    if let profilePic = selfPost["profilePic"] as? String {
                        // Access the profile picture URL here
                        print(profilePic)
                    }
                    if let userName = selfPost["userName"] as? String {
                        // Access the user name here
                        print(userName)
                    }
                    if let time = selfPost["time"] as? String {
                        // Access the post time here
                        print(time)
                    }
                    if let date = selfPost["date"] as? String {
                        // Access the post date here
                        print(date)
                    }
                    if let answer = selfPost["answer"] as? String {
                        // Access the post answer here
                        print(answer)
                    }
                    if let likes = selfPost["likes"] as? Int {
                        // Access the number of likes here
                        print(likes)
                    }
                    if let comments = selfPost["comments"] as? Int {
                        // Access the number of comments here
                        print(comments)
                    }
                }
                if let post = dictionary["post"] as? [String: Any] {
                    if let profilePic = post["profilePic"] as? String {
                        // Access the profile picture URL here
                        print(profilePic)
                    }
                    if let userName = post["userName"] as? String {
                        // Access the user name here
                        print(userName)
                    }
                    if let time = post["time"] as? String {
                        // Access the post time here
                        print(time)
                    }
                    if let date = post["date"] as? String {
                        // Access the post date here
                        print(date)
                    }
                    if let answer = post["answer"] as? String {
                        // Access the post answer here
                        print(answer)
                    }
                    if let likes = post["likes"] as? Int {
                        // Access the number of likes here
                        print(likes)
                    }
                    if let comments = post["comments"] as? Int {
                        // Access the number of comments here
                        print(comments)
                    }
                }
            }
        } catch {
            print("Error parsing JSON: \(error.localizedDescription)")
        }
    } catch {
        print("Error loading data: \(error.localizedDescription)")
    }
}
