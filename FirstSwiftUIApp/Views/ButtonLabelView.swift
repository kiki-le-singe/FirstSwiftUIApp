//
//  ButtonTextView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 09/09/2022.
//

// https://www.udemy.com/course/swiftui2020/learn/lecture/21188112#overview

import SwiftUI

struct ButtonLabelView: View {
    @State var image = "hare.fill"
    
    var body: some View {
        
        Button(action: {
            self.image = (image == "hare.fill") ? "tortoise.fill" : "hare.fill"
        }, label: {Label("Animal", systemImage: image)})
        .font(.title)
        .padding()
    }
}

struct ButtonLabelView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLabelView().previewLayout(.sizeThatFits)
    }
}
