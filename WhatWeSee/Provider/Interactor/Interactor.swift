//
//  Interactor.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 19/4/24.
//

import Foundation

protocol WWSInteractor {
    func getGenreList() async throws -> GenreMovieListDTO
}

struct Interactor: WWSInteractor {
    
    var repository: Repository
    static let shared: Interactor = Interactor(repository: Repository())
    
    
    func getGenreList() async throws -> GenreMovieListDTO {
        return try await repository.getJSON(url: Util.Services.genreList.url(), type: GenreMovieListDTO.self)
    }
    
    func getPopularList() async throws -> PopularMovieListDTO {
        return try await repository.getJSON(url: Util.Services.popularMovies.url(), type: PopularMovieListDTO.self)
    }
}
