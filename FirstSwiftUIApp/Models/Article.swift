//
//  Article.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 21/09/2022.
//

// https://api.spaceflightnewsapi.net/v3/articles
// https://www.udemy.com/course/swiftui2020/learn/lecture/21256526#overview

import Foundation

struct Article: Decodable {
    var id: Int
    var title: String
    var url: String
    var imageUrl: String
    var newsSite: String
    var summary: String
    var publishedAt: String
    var updatedAt: String
    var launches: [Launche]
    var events: [Event]
}

struct Launche: Decodable {
    var id: String?
    var provider: String?
}

struct Event: Decodable {
    var id: Int?
    var provider: String?
}
