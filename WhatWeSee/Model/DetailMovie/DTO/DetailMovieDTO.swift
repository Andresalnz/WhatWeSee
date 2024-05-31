//
//  DetailMovieDTO.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 9/5/24.
//
//https://api.themoviedb.org/3/movie/640146?api_key=d24265d9cbfd2e4119f0539b474f7c64
import Foundation

struct DetailMovieDTO: Codable, Identifiable, Hashable {
    let id: Int?
    let adult: Bool?
    let backdropPath: String?
    let belongsToCollection: BelongsToCollectionDTO?
    let budget: Double?
    let genres: [GenreMovieDTO]?
    let homepage: String?
    let imdbId: String?
    let originCountry: [String]?
    let originalLanguage: String?
    let originalTitle: String?
    let overview: String?
    let popularity: Double?
    let posterPath: String?
    let productionCompanies: [ProductionCompaniesDTO]? 
    let productionCountries: [ProductionCountriesDTO]?
    let releaseDate: String?
    let revenue: Double?
    let runtime: Int?
    let spokenLanguages: [SpokenLanguagesDTO]?
    let status: String?
    let tagline: String?
    let title: String?
    let video: Bool?
    let voteAverage: Double?
    let voteCount: Double?
    
    enum CodingKeys: String, CodingKey {
        case id
        case adult
        case backdropPath = "backdrop_path"
        case belongsToCollection = "belongs_to_collection"
        case budget
        case genres
        case homepage
        case imdbId = "imdb_id"
        case originCountry = "origin_country"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview
        case popularity
        case posterPath = "poster_path"
        case productionCompanies = "production_companies"
        case productionCountries = "production_countries"
        case releaseDate = "release_date"
        case revenue
        case runtime
        case spokenLanguages = "spoken_languages"
        case status
        case tagline
        case title
        case video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}

struct BelongsToCollectionDTO: Codable, Identifiable, Hashable {
    let id: Int?
    let name: String?
    let posterPath: String?
    let backdropPath: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case posterPath = "poster_path"
        case backdropPath = "backdrop_path"
    }
    
}

struct ProductionCompaniesDTO: Codable, Identifiable, Hashable {
    let id: Int?
    let logoPath: String?
    let name: String?
    let originCountry: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case logoPath = "logo_path"
        case name = "poster_path"
        case originCountry = "origin_country"
    }
}

struct ProductionCountriesDTO: Codable, Identifiable, Hashable {
    let id: Int?
    let acoronym: String?
    let name: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case acoronym = "iso_3166_1"
        case name
    }
}

struct SpokenLanguagesDTO: Codable, Identifiable, Hashable {
    let id: Int?
    let englishName: String?
    let acoronym: String?
    let name: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case englishName = "english_name"
        case acoronym = "iso_639_1"
        case name
    }
}

