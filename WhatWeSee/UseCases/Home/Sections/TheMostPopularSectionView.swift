//
//  TheMostPopularSectionView.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 24/4/24.
//

import SwiftUI

struct TheMostPopularSectionView: View {
    
    let titleSection: String
    let image: URL?
    
    var body: some View {
        VStack {
            if let image = image {
                AsyncImage(url: URL(string: "\(Constants.buildImage)\(image)")) { poster in
                    poster.image?.resizable()
                        .frame(width: 300, height: 400)
                        .border(.white, width: 2)
                        .frame(maxWidth: .infinity,alignment: .center)
                }
            }
                
            
            ButtonView(title: Constants.myListButton, foregroundColor: .white, styleButton: .bordered, action: {
                print("epp")
            })
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(.leading, 210)
        }
    }
}

#Preview {
    TheMostPopularSectionView(titleSection: "+ Popular", image: URL(string: "/qnqGbB22YJ7dSs4o6M7exTpNxPz.jpg"))
}
