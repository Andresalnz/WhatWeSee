//
//  SectionsHomePopularView.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 22/4/24.
//

import SwiftUI

struct SectionsHomePopularView<Content: View>: View {
    
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        List {
            content
                .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
    }
}

#Preview {
    SectionsHomePopularView(content:  { Text("hola") })
}
