//
//  SectionsHomePopularView.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 22/4/24.
//

import SwiftUI

struct CustomNavigationStackwithLink<Content: View, Destination: View>: View {
    
    let content: Content
    let destination: Destination
    
    init(@ViewBuilder content: () -> Content, @ViewBuilder destination: () -> Destination) {
        self.content = content()
        self.destination = destination()
    }
    
    var body: some View {
        NavigationStack {
            NavigationLink {
                destination
            } label: {
                content
            }
            
        }
        
        
    }
}

#Preview {
    CustomNavigationStackwithLink(content: { Text("Ir al destino") }, destination: { Text("nueo destino") })
}
