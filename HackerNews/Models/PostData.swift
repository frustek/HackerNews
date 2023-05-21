//
//  PostData.swift
//  HackerNews
//
//  Created by Adam Mroz on 21/05/2023.
//

import Foundation


struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: Int {
        return objectID
    }
    let objectID: Int
    let points: Int
    let title: String
    let url: String
}
