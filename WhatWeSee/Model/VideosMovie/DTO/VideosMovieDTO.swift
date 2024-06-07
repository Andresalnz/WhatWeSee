//
//  VideosMovieDTO.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 7/6/24.
//

import Foundation

struct VideosMovieDTO: Codable, Identifiable, Hashable {
    let id: Int?
    let results: [ResultVideosMovieDTO]?
}

struct ResultVideosMovieDTO: Codable, Identifiable, Hashable {
    let language: Language?
    let country: Country?
    let name, key: String?
    let site: Site?
    let size: Int?
    let type: TypeEnum?
    let official: Bool?
    let publishedAt, id: String?

    enum CodingKeys: String, CodingKey {
        case language = "iso639_1"
        case country = "iso_3166_1"
        case name, key, site, size, type, official
        case publishedAt = "published_at"
        case id
    }
}
