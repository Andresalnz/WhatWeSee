//
//  VoteAverageWithStarView.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 23/5/24.
//

import SwiftUI

struct VoteAverageWithImageSectionView: View {
    
    let image: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .font(.title2)
                .foregroundStyle(.yellow)
            Text(String(format: "%.1f", 9.233))
                .font(.title)
                .foregroundStyle(.white)
            
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
        .frame(maxHeight: .infinity, alignment: .bottom)
        .padding(.trailing, 7)
    }
}

#Preview {
    VoteAverageWithImageSectionView(image: "")
}
