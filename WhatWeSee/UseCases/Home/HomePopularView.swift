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
    
    //@State var currentGenre = "Populares"
    
    var body: some View {
        List {
           
            SectionsHomePopularView(content: ListGenreSection(listGenres: viewModel.genresMovie, currentGenre: $viewModel.currentGenre))
                
                Text(Constants.titleMorePopularHome)
                    .padding(.top, 20)
                    .padding(.leading, 10)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/w500/ngl2FKBlU4fhbdsrtdom9LVLBXw.jpg")) { image in
                    image.image?.resizable()
                        .frame(width: 300, height: 400)
                        .border(.white, width: 2)
                        .frame(maxWidth: .infinity,alignment: .center)
                }
                ButtonView(title: Constants.myListButton, foregroundColor: .white, styleButton: .bordered, action: {
                    print("epp")
                })
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.leading, 210)
                   
                
            Text(viewModel.currentGenre)
                    .font(.title)
                    .padding(.leading, 10)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                LazyVGrid(columns: columns, content: {
                    AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/w500/ngl2FKBlU4fhbdsrtdom9LVLBXw.jpg")) { image in
                        image.image?.resizable()
                            .frame(width: 150, height: 220)
                    }
                    
                    AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/w500/ngl2FKBlU4fhbdsrtdom9LVLBXw.jpg")) { image in
                        image.image?.resizable()
                            .frame(width: 150, height: 220)
                    }
                    Text("hola")
                })
            
        }
        .listStyle(.plain)
        .onAppear {
            viewModel.loadUI()
        }
        
    }
}

#Preview {
    HomePopularView()
    
}
