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
    let titleNavigation: String?
    
    init(@ViewBuilder content: () -> Content, @ViewBuilder destination: () -> Destination, titleNavigation: String?) {
        self.content = content()
        self.destination = destination()
        self.titleNavigation = titleNavigation
    }
    
    
    var body: some View {
        Text(titleNavigation ?? "")
            .font(.title)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading)
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
    CustomNavigationStackwithLink(content:  { Text("Ir al destino") }, destination: { Text("nueo destino") }, titleNavigation: "TITULO")
}
