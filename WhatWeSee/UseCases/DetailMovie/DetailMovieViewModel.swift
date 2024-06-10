//
//  DetailMovieViewModel.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 9/5/24.
//

import Foundation

final class DetailMovieViewModel: ObservableObject {
    
    private let interactor: Interactor
    
    @Published var detailMovie: DetailMovieVO
    @Published var videosMovie: [VideosMovieVO]
    
    
    var idMovie: Int?
   
    init(interactor: Interactor = Interactor.shared, detailMovie: DetailMovieVO = DetailMovieVO(), videosMovie: [VideosMovieVO] = [VideosMovieVO()], idMovie: Int? = 1) {
        self.interactor = interactor
        self.detailMovie = detailMovie
        self.videosMovie = videosMovie
        self.idMovie = idMovie
    }
    
    func loadUI() {
        Task {
            try await loadData()
        }
    }
    
   
    
    func loadData() async throws {
        do {
            guard let idMovie = idMovie else { return }
            let getDetailMovie = try await interactor.getDetailMovie(idMovie)
            let getVideosMovie = try await interactor.getVideosMovie(idMovie)
            await MainActor.run {
                self.detailMovie = getDetailMovie.toBo().item
                
                if let videos = getVideosMovie.results {
                    self.videosMovie = videos.compactMap { $0.toBo().itemVO }
                }
            }

        } catch let error {
            print("Error --> \(error)")
        }
    }
    
    
}

extension String {
    func formatDateString(fromFormat: String, toFormat: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "es")
        dateFormatter.dateFormat = fromFormat
        if let date = dateFormatter.date(from: self as String) {
            dateFormatter.dateFormat = toFormat
            return dateFormatter.string(from: date)
        } else{
            return "La fecha no se ha podido formatear"
        }
    }
    
}
