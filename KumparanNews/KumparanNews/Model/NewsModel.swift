//
//  NewsModel.swift
//  KumparanNews
//
//  Created by Arry on 25/02/24.
//

import Foundation

// MARK: - NewsResponse
struct NewsResponse: Decodable {
    var message: String
    var total: Int
    var data: [NewsArticle]
}

// MARK: - NewsArticle
struct NewsArticle: Identifiable, Decodable {
    var id: String {link}
    var creator, title, isoDate, description, link: String
    var author: String?
    var categories: [NewsCategory]
    var image: NewsImage
}

// MARK: - NewsCategory
enum NewsCategory: String, Codable {
    case nusantara = "Nusantara"
}

// MARK: - Image
struct NewsImage: Codable {
    var small: String?
    var medium: String?
    var large: String?
    var extraLarge: String?
}
