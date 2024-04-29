//
//  ListMoviesPopularSectionView.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 26/4/24.
//

import SwiftUI

struct ListMoviesPopularSectionView: View {
    
    let titleSection: String
    let listMoviesPopular: [PopularMovieBO]
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        CustomSectionHeaderView(content: {
            LazyVGrid(columns: columns, spacing: 30, content: {
                ForEach(listMoviesPopular, id: \.id) { movie in
                    if let posterPath = movie.posterPath  {
                        AsyncImage(url: URL(string: "\(Constants.buildImage)\(posterPath)")) { poster in
                            poster.image?.resizable()
                                .frame(width: 150, height: 220)
                        }
                    }
                }
            })
        }, header: titleSection)
    }
}

#Preview {
    ListMoviesPopularSectionView(titleSection: "Populares", listMoviesPopular: [PopularMovieBO(adult: false, backdropPath: URL(string: ""), genreIds: [1], id: 1, originalLanguage: "es", originalTitle: "Terminator", overview: "", popularity: 12.1, posterPath: URL(string: "https://image.tmdb.org/t/p/w500//gmGK5Gw5CIGMPhOmTO0bNA9Q66c.jpg"), releaseDate: "", title: "", video: false, voteAverage: 12.2, voteCount: 1), PopularMovieBO(adult: false, backdropPath: URL(string: ""), genreIds: [1], id: 1, originalLanguage: "es", originalTitle: "Terminator", overview: "", popularity: 12.1, posterPath: URL(string: "https://image.tmdb.org/t/p/w500//gmGK5Gw5CIGMPhOmTO0bNA9Q66c.jpg"), releaseDate: "", title: "", video: false, voteAverage: 12.2, voteCount: 1)])
}
