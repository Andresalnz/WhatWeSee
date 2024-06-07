//
//  DetailMovieVO.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 25/5/24.
//

import Foundation

struct DetailMovieVO: Codable, Identifiable, Hashable {
    var id: Int?
    var originalTitle: String?
    var overview: String?
    var tagLine: String?
    var releaseDate: String?
    var posterPath: URL?
    var runtime: Int?
    var originCountry: [String]?
}

protocol x: Encodable {
    var id: Int? { get }
    var originalTitle: String? { get }
    var tagLine: String? { get }
    var releaseDate: String? { get }
    var posterPath: URL? { get }
}
