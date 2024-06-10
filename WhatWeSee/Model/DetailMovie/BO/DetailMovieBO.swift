//
//  DetailMovieBO.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 14/5/24.
//

import Foundation

struct DetailMovieBO: Codable, Identifiable, Hashable {
    let id: Int?
    let adult: Bool?
    let backdropPath: URL?
    let belongsToCollection: BelongsToCollectionBO?
    let budget: Double?
    let genres: [GenreMovieBO]?
    let homepage: URL?
    let imdbId: String?
    let originCountry: [String]?
    let originalLanguage: String?
    let originalTitle: String?
    let overview: String?
    let popularity: Double?
    let posterPath: URL?
    let productionCompanies: [ProductionCompaniesBO]?
    let productionCountries: [ProductionCountriesBO]?
    let releaseDate: String?
    let revenue: Double?
    let runtime: Int?
    let spokenLanguages: [SpokenLanguagesBO]?
    let status: String?
    let tagline: String?
    let title: String?
    let video: Bool?
    let voteAverage: Double?
    let voteCount: Double?
    
    let item: DetailMovieVO
    
    init(id: Int?, adult: Bool?, backdropPath: URL?, belongsToCollection: BelongsToCollectionBO?, budget: Double?, genres: [GenreMovieBO]?, homepage: URL?, imdbId: String?, originCountry: [String]?, originalLanguage: String?, originalTitle: String?, overview: String?, popularity: Double?, posterPath: URL?, productionCompanies: [ProductionCompaniesBO]?, productionCountries: [ProductionCountriesBO]?, releaseDate: String?, revenue: Double?, runtime: Int?, spokenLanguages: [SpokenLanguagesBO]?, status: String?, tagline: String?, title: String?, video: Bool?, voteAverage: Double?, voteCount: Double?, item: DetailMovieVO) {
        self.id = id
        self.adult = adult
        self.backdropPath = backdropPath
        self.belongsToCollection = belongsToCollection
        self.budget = budget
        self.genres = genres
        self.homepage = homepage
        self.imdbId = imdbId
        self.originCountry = originCountry
        self.originalLanguage = originalLanguage
        self.originalTitle = originalTitle
        self.overview = overview
        self.popularity = popularity
        self.posterPath = posterPath
        self.productionCompanies = productionCompanies
        self.productionCountries = productionCountries
        self.releaseDate = releaseDate
        self.revenue = revenue
        self.runtime = runtime
        self.spokenLanguages = spokenLanguages
        self.status = status
        self.tagline = tagline
        self.title = title
        self.video = video
        self.voteAverage = voteAverage
        self.voteCount = voteCount
        self.item = DetailMovieVO(id: id, originalTitle: originalTitle, overview: overview, tagLine: tagline, releaseDate: releaseDate, posterPath: posterPath, runtime: runtime, originCountry: originCountry, voteAverage: voteAverage)
    }
    
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
        case item
    }
}

struct BelongsToCollectionBO: Codable, Identifiable, Hashable {
    let id: Int?
    let name: String?
    let posterPath: URL?
    let backdropPath: URL?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case posterPath = "poster_path"
        case backdropPath = "backdrop_path"
    }
    
}

struct ProductionCompaniesBO: Codable, Identifiable, Hashable {
    let id: Int?
    let logoPath: URL?
    let name: String?
    let originCountry: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case logoPath = "logo_path"
        case name = "poster_path"
        case originCountry = "origin_country"
    }
}

struct ProductionCountriesBO: Codable, Identifiable, Hashable {
    let id: Int?
    let acoronym: String?
    let name: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case acoronym = "iso_3166_1"
        case name
    }
}

struct SpokenLanguagesBO: Codable, Identifiable, Hashable {
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
