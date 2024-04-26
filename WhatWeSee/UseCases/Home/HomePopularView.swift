//
//  HomePopularView.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 10/4/24.
//

import SwiftUI

struct HomePopularView: View {

    @StateObject var viewModel: HomePopularViewModel = HomePopularViewModel()

    var body: some View {
        SectionsHomePopularView {
            ListGenreSection(listGenres: viewModel.genresMovie, currentGenre: $viewModel.currentGenre)
            
            TheMostPopularSectionView(titleSection: Constants.titleMorePopularHome, listMoviesPopular: viewModel.popularMovies)
            
            ListMoviesPopularSectionView(titleSection: viewModel.currentGenre, listMoviesPopular: viewModel.popularMovies)
        }
        .onAppear {
            viewModel.loadUI()
        }
    }
    
}

#Preview {
    HomePopularView()
    
}
