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
                            VoteAverageWithImageSectionView(image: "star.fill")
                        }
                }
                
                InformationMovieSectionView(detailMovie: viewModel.detailMovie)
                
                TrailersMovieSectionView(videosMovie: viewModel.videosMovie)
                
                Group {
                    Text("Similar")
                        .font(.title)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .padding(.top)
                    LazyVGrid(columns: columns, spacing: 30, content: {
                        AsyncImage(url: URL(string: "\(Constants.buildImage)\("/kDp1vUBnMpe8ak4rjgl3cLELqjU.jpg")")) { item in
                            item.resizable()
                                .frame(width: 100, height: 150)
                                .frame(maxWidth: .infinity,alignment: .center)
                            
                        } placeholder: {
                            ProgressView()
                        }
                        
                        AsyncImage(url: URL(string: "\(Constants.buildImage)\("/kDp1vUBnMpe8ak4rjgl3cLELqjU.jpg")")) { item in
                            item.resizable()
                                .frame(width: 100, height: 150)
                                .frame(maxWidth: .infinity,alignment: .center)
                            
                        } placeholder: {
                            ProgressView()
                        }
                        
                        AsyncImage(url: URL(string: "\(Constants.buildImage)\("/kDp1vUBnMpe8ak4rjgl3cLELqjU.jpg")")) { item in
                            item.resizable()
                                .frame(width: 100, height: 150)
                                .frame(maxWidth: .infinity,alignment: .center)
                            
                        } placeholder: {
                            ProgressView()
                        }
                        
                        AsyncImage(url: URL(string: "\(Constants.buildImage)\("/kDp1vUBnMpe8ak4rjgl3cLELqjU.jpg")")) { item in
                            item.resizable()
                                .frame(width: 100, height: 150)
                                .frame(maxWidth: .infinity,alignment: .center)
                            
                        } placeholder: {
                            ProgressView()
                        }
                    })
                }
                // .padding(.top, 25)
                
                
                
                
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
