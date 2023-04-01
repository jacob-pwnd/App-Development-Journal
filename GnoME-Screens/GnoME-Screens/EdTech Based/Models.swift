//
//  Models.swift
//  GnoME-Screens
//
//  Created by user232149 on 3/31/23.
//

import Foundation

struct Module: Decodable, Identifiable{
    var id: Int
    var category: String
    var content: Content
    var quiz: Quiz
}

struct Content: Decodable, Identifiable{
    var id: Int
    var image: String
    var time: String
    var description: String
    var lessons: [Lessons]
    
}

struct Lessons: Decodable, Identifiable{
    var id: Int
    var title: String
    var video: String
    var duration: String
    var explanation: String
}

struct Quiz: Decodable, Identifiable{
    var id: Int
    var image: String
    var time: String
    var description: String
    var questions: [Questions]
}

struct Questions: Decodable, Identifiable{
    var id: Int
    var content: String
    var correctIndex: Int
    var answers: [String]
}
