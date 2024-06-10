//
//  HomePopularViewModel.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 19/4/24.
//

import Foundation

final class HomePopularViewModel: ObservableObject {
    
    private let interactor: Interactor
    
    @Published var genresMovie: [GenreMovieBO]
    @Published var popularMovies: [PopularMovieBO]
    @Published var currentGenre: String = "Action"
    
    init(interactor: Interactor = Interactor.shared, genresMovie: [GenreMovieBO] = [], popularMovies: [PopularMovieBO] = []) {
        self.interactor = interactor
        self.genresMovie = genresMovie
        self.popularMovies = popularMovies
    }
    
    var popularMoviesFilterGenre: [PopularMovieBO] {
        for genre in genresMovie {
            if genre.name == currentGenre {
                let filterMovies = popularMovies.filter { movie in
                    movie.genreIds!.contains(genre.id!)
                }
                if filterMovies.isEmpty {
                    return popularMovies
                }
                
                return filterMovies
            }
        }
        return popularMovies
    }
    
    func loadUI() {
        Task {
            try await loadData()
        }
    }
    
    func loadData() async throws {
        do {
            let getGenreListMovie = try await interactor.getGenreList()
            let getPopularMovieList = try await interactor.getPopularList()
            await MainActor.run {
                if let listGenre = getGenreListMovie.genres {
                    self.genresMovie = listGenre.compactMap { $0.toBo() }
                }
                if let listpopular = getPopularMovieList.results {
                    self.popularMovies = listpopular.compactMap { $0.toBo() }
                }
            }

        } catch let error {
            print("Error --> \(error)")
        }
    }
}
