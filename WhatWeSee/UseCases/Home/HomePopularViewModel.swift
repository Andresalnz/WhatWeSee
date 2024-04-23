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
    @Published var currentGenre: String = "Populare"
    
    init(interactor: Interactor = Interactor.shared, genresMovie: [GenreMovieBO] = []) {
        self.interactor = interactor
        self.genresMovie = genresMovie
       
    }
    
    func loadUI() {
        Task {
            try await loadData()
        }
    }
    
    func loadData() async throws {
        do {
            let getGenreListMovie = try await interactor.getGenreList()
            
            await MainActor.run {
                if let listGenre = getGenreListMovie.genres {
                    self.genresMovie = listGenre.compactMap { $0.toBo() }
                }
            }

        } catch let error {
            print("Error --> \(error)")
        }
    }
}
