//
//  ButtonTextView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 09/09/2022.
//

// https://www.udemy.com/course/swiftui2020/learn/lecture/21188112#overview

import SwiftUI

struct ButtonTextView: View {
    @State var color: Color = .blue
    
    var body: some View {
        Button("Click me") {
            self.color = (color == .blue) ? .pink : .blue
        }.foregroundColor(color)
        
    }
}

struct ButtonTextView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonTextView().previewLayout(.sizeThatFits)
    }
}
