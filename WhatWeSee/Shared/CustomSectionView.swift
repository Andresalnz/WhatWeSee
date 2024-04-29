//
//  CustomSectionHeaderView.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 26/4/24.
//

import SwiftUI

struct CustomSectionHeaderView<Content: View>: View {
    
    let content: Content
    let header: String?
    
    init(@ViewBuilder content: () -> Content, header: String?) {
        self.content = content()
        self.header = header
    }
    
    
    var body: some View {
        Section {
            content
        } header: {
            Text(header ?? "")
                .padding(.leading, 10)
                .font(.title)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

#Preview {
    CustomSectionHeaderView(content: { Text("hola") }, header: "Header")
}
