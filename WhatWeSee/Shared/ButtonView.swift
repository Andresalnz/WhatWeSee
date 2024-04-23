//
//  ButtonView.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 19/4/24.
//

import SwiftUI

struct ButtonView: View {
    
    let title: String
    let foregroundColor: Color
    let styleButton: BorderedButtonStyle
    
    var action: () -> Void
    
    var body: some View {
        Button(title) {
            action()
        }
        .foregroundStyle(foregroundColor)
        .buttonStyle(styleButton)
    }
}

#Preview {
    ButtonView(title: "Acción", foregroundColor: .white, styleButton: .bordered,  action: { print("boton") })
}
