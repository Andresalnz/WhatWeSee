//
//  HomePopularView.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 10/4/24.
//

import SwiftUI

struct HomePopularView: View {
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        ScrollView {
            VStack {
                
                ScrollView(.horizontal) {
                    HStack {
                        Button("Acción") {
                            //
                        }
                        .foregroundStyle(.white)
                        .buttonStyle(.bordered)
                        Button("Drama") {
                            //
                        }
                        .foregroundStyle(.white)
                        .buttonStyle(.bordered)
                        Button("Comedia") {
                            //
                        }
                        .foregroundStyle(.white)
                        .buttonStyle(.bordered)
                        Button("Anime") {
                            //
                        }
                        .foregroundStyle(.white)
                        .buttonStyle(.bordered)
                        Button("Acción") {
                            //
                        }
                        .foregroundStyle(.white)
                        .buttonStyle(.bordered)
                        Button("Acción") {
                            //
                        }
                        .foregroundStyle(.white)
                        .buttonStyle(.bordered)
                        Button("Acción") {
                            //
                        }
                        .foregroundStyle(.white)
                        .buttonStyle(.bordered)
                        
                    }
                }
                Text("La + Popular en Acción")
                    .padding(.top, 20)
                    .padding(.leading, 10)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/w500/ngl2FKBlU4fhbdsrtdom9LVLBXw.jpg")) { image in
                    image.image?.resizable()
                        .frame(width: 300, height: 400)
                        .border(.white, width: 2)
                    
                    
                }
                
                
                Button("+ Mi lista") {
                    //
                }
                .foregroundStyle(.white)
                .buttonStyle(.bordered)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing, 45)
                
                
                Text("Acción")
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
        }
        
       
    }
}

#Preview {
    HomePopularView()
       
}
