//
//  TextFieldView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 09/09/2022.
//

// https://www.udemy.com/course/swiftui2020/learn/lecture/21188754#overview

import SwiftUI

struct TextFieldView: View {
    @State var name: String = ""
    @State var email: String = ""
    @State var age: String = ""
    @State var isEditing: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Hello \(name)")
                
            TextFieldCptView(
                placeholder: "Enter your name",
                text: $name,
                triggered: $isEditing
            )

            Divider()
            Spacer()
            
            Text("Email: \(name)")
                
            TextFieldCptView(
                placeholder: "Enter your email",
                keyboardType: .emailAddress,
                text: $email,
                triggered: $isEditing
            )

            Divider()
            Spacer()
            
            
            Text("Age: \(age)")
                
            TextFieldCptView(
                placeholder: "Enter your age",
                keyboardType: .numberPad,
                text: $age,
                triggered: $isEditing
            )
        }
        .background(isEditing ? Color.pink : Color.indigo)
        .padding()
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
