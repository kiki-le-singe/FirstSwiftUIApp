//
//  InteractiveComponentsView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 09/09/2022.
//

import SwiftUI

struct InteractiveUIView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Buttons")) {
                    NavigationLink("Button Text", destination: ButtonTextView())
                    NavigationLink("Button Label", destination: ButtonLabelView())
                }
                Section(header: Text("Texts")) {
                    NavigationLink("TextField", destination: TextFieldView())
                    NavigationLink("SecureField", destination: SecureFieldView())
                    NavigationLink("TextEditor", destination: TextEditorView())
                }
            }
        }
    }
}

struct InteractiveComponentsView_Previews: PreviewProvider {
    static var previews: some View {
        InteractiveUIView()
    }
}
