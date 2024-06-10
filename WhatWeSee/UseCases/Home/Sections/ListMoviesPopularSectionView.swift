//
//  ListMoviesPopularSectionView.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 26/4/24.
//

import SwiftUI

struct ListMoviesPopularSectionView: View {
    
    let poster: URL?
    
    var body: some View {
        if let posterPath = poster  {
            AsyncImage(url: URL(string: "\(Constants.buildImage)\(posterPath)")) { poster in
                poster.image?.resizable()
                    .frame(width: 150, height: 220)
            }
        }
    }
}

#Preview {
    ListMoviesPopularSectionView(poster: URL(string: ""))
}
