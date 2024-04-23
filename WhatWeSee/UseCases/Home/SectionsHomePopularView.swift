//
//  SectionsHomePopularView.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 22/4/24.
//

import SwiftUI

struct SectionsHomePopularView<Content: View>: View {
    
    let content: Content
   
    
    var body: some View {
        content
    }
}

#Preview {
    SectionsHomePopularView(content: Text("hola"))
}
