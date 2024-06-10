//
//  HomePopularView.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 10/4/24.
//

import SwiftUI

struct HomePopularView: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    @StateObject var viewModel: HomePopularViewModel = HomePopularViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ListGenreSection(listGenres: viewModel.genresMovie, currentGenre: $viewModel.currentGenre)
                    .padding(.leading)
                    .padding(.top)
                Text(Constants.titleMorePopularHome +  viewModel.currentGenre)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                CustomNavigationStackwithLink(content: {
                    TheMostPopularSectionView(titleSection: Constants.titleMorePopularHome, image: viewModel.popularMoviesFilterGenre.first?.posterPath)
                }, destination: {
                    DetailMovieView(viewModel: DetailMovieViewModel(idMovie: viewModel.popularMoviesFilterGenre.first?.id))
                })
                Text(viewModel.currentGenre)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                LazyVGrid(columns: columns, spacing: 30, content: {
                    ForEach(viewModel.popularMoviesFilterGenre, id: \.id) { movie in
                        CustomNavigationStackwithLink(content: {
                            
                            ListMoviesPopularSectionView(poster: movie.posterPath )
                        }, destination: {
                            DetailMovieView(viewModel: DetailMovieViewModel(idMovie: movie.id))
                        })
                    }
                })
            }
        }
        .onAppear {
            viewModel.loadUI()
        }
    }
}

#Preview {
    HomePopularView()
    
}
