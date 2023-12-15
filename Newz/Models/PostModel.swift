//
//  PostModel.swift
//  Newz
//
//  Created by jishnu biju on 13/12/23.
//

import Foundation

// MARK: - PostModel
struct PostModel: Codable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable, Identifiable {
    var id = UUID().uuidString
    let title, description: String
    
    enum CodingKeys: CodingKey {
        case title
        case description
    }
}

