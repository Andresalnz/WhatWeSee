//
//  GenreMovieListBO.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 19/4/24.
//

import Foundation

struct GenreMovieListBO: Codable, Identifiable, Hashable {
    let id: Int?
    let genres: [GenreMovieBO]
}

struct GenreMovieBO: Codable, Identifiable, Hashable {
    let id: Int?
    let name: String?
}
