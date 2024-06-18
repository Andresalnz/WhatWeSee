//
//  TrailersMovieSectionView.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 7/6/24.
//

import SwiftUI

struct TrailersMovieSectionView: View {
    
    @State var columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    let videosMovie: [VideosMovieVO]
    
    var body: some View {
        GroupBox("Trailers") {
                LazyVGrid(columns: columns, spacing: 20, content: {
                    ForEach(videosMovie, id: \.id) { video in
                        if video.type == "Trailer" {
                            ButtonView(title:  video.site ?? "", foregroundColor: .accentColor, styleButton: .bordered) {
                                print("hola")
                            }
                            
                        }
                    }
                })
        }
        .padding(.top)
    }
}

#Preview {
    TrailersMovieSectionView(videosMovie:[VideosMovieVO(id: "1", name: "Nombre", site: "Youtube", type: "Trailer", official: true), VideosMovieVO(id: "1", name: "Nombre", site: "Youtube", type: "Trailer", official: true)])
}
