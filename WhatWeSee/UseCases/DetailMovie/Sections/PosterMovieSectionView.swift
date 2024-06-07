//
//  PosterMovieSectionView.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 9/5/24.
//

import SwiftUI

struct PosterMovieSectionView: View {
    
    let imageDetailMovie: URL
    
    var body: some View {
        AsyncImage(url: URL(string: "\(Constants.buildImage)\(imageDetailMovie)")) { item in
            item.resizable()
                .background(item
                    .resizable()
                    .frame(height: 300)
                    .frame(maxWidth: .infinity)
                    .aspectRatio(contentMode: .fill)
                    .blur(radius: 7)
                    .opacity(0.7)
                )
        } placeholder: {
            ProgressView(value: 0.4)
                .progressViewStyle(.circular)
        }
    }
}

#Preview {
    PosterMovieSectionView(imageDetailMovie: URL(string: "\(Constants.buildImage)\("/pB8BM7pdSp6B6Ih7QZ4DrQ3PmJK.jpg")")!)
}
