//
//  TextEditorView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 09/09/2022.
//

// https://www.udemy.com/course/swiftui2020/learn/lecture/21159786#overview

import SwiftUI

struct TextEditorView: View {
    @State var text: String = ""

    var body: some View {
        VStack {
            Text("Text : \(text)")
            
            TextEditor(text: $text)
                .frame(width: .none, height: .none, alignment: .center)
                .padding(.all, 10)
        }.padding()
    }
}

struct TextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorView()
    }
}
