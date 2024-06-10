//
//  DetailMovieView.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 7/5/24.
//

import SwiftUI
import WebKit

struct DetailMovieView: View {
    
    @StateObject var viewModel: DetailMovieViewModel = DetailMovieViewModel()
    
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        ScrollView {
            VStack {
                if let poster = viewModel.detailMovie.posterPath {
                    PosterMovieSectionView(imageDetailMovie: poster)
                        .frame(width: 200, height: 300)
                        .frame(maxWidth: .infinity,alignment: .center)
                        .overlay {
                            VoteAverageWithImageSectionView(image: "star.fill", vote: viewModel.detailMovie.voteAverage)
                        }
                }
                
                InformationMovieSectionView(detailMovie: viewModel.detailMovie)
                
                TrailersMovieSectionView(videosMovie: viewModel.videosMovie)
                
            }
        }
        .onAppear {
            viewModel.loadUI()
        }
        
    }
}

#Preview {
    DetailMovieView()
}
