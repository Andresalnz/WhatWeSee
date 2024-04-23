//
//  GenreMovieListDTO.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 19/4/24.
//

import Foundation

struct GenreMovieListDTO: Codable, Identifiable, Hashable {
    let id: Int?
    let genres: [GenreMovieDTO]?
}

struct GenreMovieDTO: Codable, Identifiable, Hashable {
    let id: Int?
    let name: String?
}
