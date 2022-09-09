//
//  TextFieldView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 09/09/2022.
//

import SwiftUI

struct TextFieldCptView: View {
    var placeholder: String
    var keyboardType: UIKeyboardType = .default
    @Binding var text: String
    @Binding var triggered: Bool
    
    var body: some View {
        TextField(
            placeholder,
            text: $text,
            onEditingChanged: { (edited) in
                triggered = edited
                print("Edited: \(triggered)") // Allow to debug like console.log in JS
            },
            onCommit: {
                print("Commit")
            }
        )
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .keyboardType(keyboardType)
    }
}

struct TextFieldCptView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldCptView(
            placeholder: "Enter your name",
            keyboardType: .default,
            text: .constant(""),
            triggered: .constant(false)
        ).previewLayout(.sizeThatFits)
    }
}
