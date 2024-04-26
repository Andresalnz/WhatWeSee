//
//  PopularMovieBO.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 24/4/24.
//

import Foundation

struct PopularMovieListBO: Codable, Identifiable, Hashable {
    let id: Int
    let page: Int?
    let results: [PopularMovieBO]?
    let totalPages: Int?
    let totalResults: Int?
    
    enum CodingKeys: String, CodingKey {
        case id
        case page
        case results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

struct PopularMovieBO: Codable, Identifiable, Hashable {
    let adult: Bool?
    let backdropPath: URL?
    let genreIds: [Int]?
    let id: Int?
    let originalLanguage: String?
    let originalTitle: String?
    let overview: String?
    let popularity: Double?
    let posterPath: URL?
    let releaseDate: String?
    let title: String?
    let video: Bool?
    let voteAverage: Double?
    let voteCount: Int?
    
    enum CodingKeys: String, CodingKey {
        case adult
        case backdropPath = "backdrop_path"
        case genreIds = "genre_ids"
        case id
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview
        case popularity
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case title
        case video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}
/* "adult": false,
 "backdrop_path": "/qrGtVFxaD8c7et0jUtaYhyTzzPg.jpg",
 "genre_ids": [
 28,
 878,
 12,
 14
 ],
 "id": 823464,
 "original_language": "en",
 "original_title": "Godzilla x Kong: The New Empire",
 "overview": "Following their explosive showdown, Godzilla and Kong must reunite against a colossal undiscovered threat hidden within our world, challenging their very existence – and our own.",
 "popularity": 1883.28,
 "poster_path": "/gmGK5Gw5CIGMPhOmTO0bNA9Q66c.jpg",
 "release_date": "2024-03-27",
 "title": "Godzilla x Kong: The New Empire",
 "video": false,
 "vote_average": 6.66,
 "vote_count": 717*/
