//
//  ListGenreSection.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 22/4/24.
//

import SwiftUI

struct ListGenreSection: View {
    
     var listGenres: [GenreMovieBO]
    
    @Binding var currentGenre: String
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(listGenres, id: \.id) { genre in
                    ButtonView(title: genre.name ?? "", foregroundColor: .white, styleButton: .bordered, action: {
                        currentGenre = genre.name!
                    })
                }
            }
        }
    }
}

#Preview {
    ListGenreSection(listGenres: [GenreMovieBO(id: 1, name: "name")], currentGenre: .constant("Acción"))
}
