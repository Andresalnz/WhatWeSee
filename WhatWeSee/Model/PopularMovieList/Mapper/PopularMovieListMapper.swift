//
//  PopularMovieListMapper.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 24/4/24.
//

import Foundation

extension PopularMovieDTO {
    func toBo() -> PopularMovieBO {
        return PopularMovieBO(adult: adult,
                              backdropPath: URL(string: backdropPath ?? ""),
                              genreIds: genreIds,
                              id: id,
                              originalLanguage: originalLanguage,
                              originalTitle: originalTitle,
                              overview: overview,
                              popularity: popularity,
                              posterPath: URL(string: posterPath ?? ""),
                              releaseDate: releaseDate,
                              title: title,
                              video: video,
                              voteAverage: voteAverage,
                              voteCount: voteCount)
    }
}
