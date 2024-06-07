//
//  InformationMovieSectionView.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 23/5/24.
//

import SwiftUI

struct InformationMovieSectionView: View {
    
    
    let detailMovie: DetailMovieVO
    
    var body: some View {
        Group {
            Text(detailMovie.originalTitle ?? "")
                .font(.title)
                .bold()
             
            Text(detailMovie.tagLine ?? "")
                .font(.headline)
                .fontWeight(.medium)
            HStack {
                Text(detailMovie.releaseDate?.formatDateString(fromFormat: "yyyy-MM-dd", toFormat: "yyyy") ?? "")
                Text("\(detailMovie.runtime ?? 0)mint")
                Text(detailMovie.originCountry?.first ?? "")
//                Link(destination: URL(string: "https")!, label: {
//                    Text("Info")
//                })
            }
            .padding(.vertical,  7)
            Text(detailMovie.overview ?? "")
                
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.leading)
    }
}

#Preview {
    InformationMovieSectionView(detailMovie: DetailMovieVO(id: 1, originalTitle: "Terminator", overview: "Super-Hero partners Scott Lang and Hope van Dyne, along with with Hope's parents Janet van Dyne and Hank Pym, and Scott's daughter Cassie Lang, find themselves exploring the Quantum Realm, interacting with strange new creatures and embarking on an adventure that will push them beyond the limits of what they thought possible.", tagLine: "La lucha continua", releaseDate: "2023-02-15", posterPath: URL(string: "https://image.tmdb.org/t/p/w500/qnqGbB22YJ7dSs4o6M7exTpNxPz.jpg"), runtime: 125, originCountry: ["US"]))
}
