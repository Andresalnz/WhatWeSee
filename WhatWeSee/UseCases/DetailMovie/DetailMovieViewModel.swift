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
   
    init(interactor: Interactor = Interactor.shared, detailMovie: DetailMovieVO = DetailMovieVO()) {
        self.interactor = interactor
        self.detailMovie = detailMovie
    }
    
    func loadUI() {
        Task {
            try await loadData()
        }
    }
    
   
    
    func loadData() async throws {
        do {
            let getDetailMovie = try await interactor.getDetailMovie()
           
            await MainActor.run {
                self.detailMovie = getDetailMovie.toBo().item
                
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
