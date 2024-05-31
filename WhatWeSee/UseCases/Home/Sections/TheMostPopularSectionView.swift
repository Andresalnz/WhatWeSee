//
//  TheMostPopularSectionView.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 24/4/24.
//

import SwiftUI

struct TheMostPopularSectionView: View {
    
    let titleSection: String
    let listMoviesPopular: [PopularMovieBO]
    
    var body: some View {
        VStack {
            if let posterPath = listMoviesPopular.first?.posterPath  {
                AsyncImage(url: URL(string: "\(Constants.buildImage)\(posterPath)")) { poster in
                    poster.image?.resizable()
                        .frame(width: 300, height: 400)
                        .border(.white, width: 2)
                        .frame(maxWidth: .infinity,alignment: .center)
                }
            }
            ButtonView(title: Constants.myListButton, foregroundColor: .white, styleButton: .bordered, action: {
                print("epp")
            })
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(.leading, 210)
        }
    }
}

#Preview {
    TheMostPopularSectionView(titleSection: "+ Popular", listMoviesPopular: [PopularMovieBO(adult: false, backdropPath: URL(string: ""), genreIds: [1], id: 1, originalLanguage: "es", originalTitle: "Terminator", overview: "", popularity: 12.1, posterPath: URL(string: "https://image.tmdb.org/t/p/w500//gmGK5Gw5CIGMPhOmTO0bNA9Q66c.jpg"), releaseDate: "", title: "", video: false, voteAverage: 12.2, voteCount: 1)])
}
