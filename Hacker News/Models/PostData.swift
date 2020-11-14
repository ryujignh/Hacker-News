//
//  PostData.swift
//  Hacker News
//
//  Created by Ryuji Ganaha on 2020/11/14.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
