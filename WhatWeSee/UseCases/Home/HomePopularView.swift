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
        NavigationStack {
            ScrollView {
                ListGenreSection(listGenres: viewModel.genresMovie, currentGenre: $viewModel.currentGenre)
                    .padding(.leading)
                    .padding(.top)
                
                CustomNavigationStackwithLink(content: {
                    TheMostPopularSectionView(titleSection: Constants.titleMorePopularHome, listMoviesPopular: viewModel.popularMoviesFilterGenre)
                }, destination: {
                    DetailMovieView(viewModel: DetailMovieViewModel())
                }, titleNavigation: Constants.titleMorePopularHome)
                
                CustomNavigationStackwithLink(content: {
                    ListMoviesPopularSectionView(titleSection: viewModel.currentGenre, listMoviesPopular: viewModel.popularMoviesFilterGenre)
                }, destination: {
                    DetailMovieView(viewModel: DetailMovieViewModel())
                }, titleNavigation: viewModel.currentGenre)
               
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
