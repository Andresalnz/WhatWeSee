//
//  VideosMovieBO.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 7/6/24.
//

import Foundation

struct VideosMovieBO: Codable, Identifiable, Hashable {
    let id: Int?
    let results: [ResultVideosMovieBO]?
}

struct ResultVideosMovieBO: Codable, Identifiable, Hashable {
    let language: Language?
    let country: Country?
    let name, key: String?
    let site: Site?
    let size: Int?
    let type: TypeEnum?
    let official: Bool?
    let publishedAt: Date?
    let id: String?
    
    let itemVO: VideosMovieVO
    
    init(language: Language?, country: Country?, name: String?, key: String?, site: Site?, size: Int?, type: TypeEnum?, official: Bool?, publishedAt: Date?, id: String?, itemVO: VideosMovieVO) {
        self.language = language
        self.country = country
        self.name = name
        self.key = key
        self.site = site
        self.size = size
        self.type = type
        self.official = official
        self.publishedAt = publishedAt
        self.id = id
        self.itemVO = VideosMovieVO(id: id, name: name, site: site?.rawValue, type: type?.rawValue, official: official)
    }

    enum CodingKeys: String, CodingKey {
        case language = "iso_639_1"
        case country = "iso_3166_1"
        case name, key, site, size, type, official
        case publishedAt = "published_at"
        case id
        case itemVO
    }
}

enum Country: String, Codable {
    case us = "US"
}

enum Language: String, Codable {
    case en = "en"
}

enum Site: String, Codable {
    case youTube = "YouTube"
}

enum TypeEnum: String, Codable {
    case behindTheScenes = "Behind the Scenes"
    case clip = "Clip"
    case featurette = "Featurette"
    case teaser = "Teaser"
    case trailer = "Trailer"
}
