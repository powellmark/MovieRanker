//
//  SearchElement.swift
//  MovieRanker
//
//  Created by Mark Powell on 9/22/19.
//  Copyright © 2019 Lavacado. All rights reserved.
//

import UIKit
struct Search: Codable {
    let search: [SearchElement]
    let totalResults, response: String

    enum CodingKeys: String, CodingKey {
        case search = "Search"
        case totalResults
        case response = "Response"
    }
}

struct SearchElement: Codable {
    let title, year, imdbID: String
    let type: TypeEnum
    let poster: String

    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case imdbID
        case type = "Type"
        case poster = "Poster"
    }
}

enum TypeEnum: String, Codable {
    case movie = "movie"
    case series = "series"
}
