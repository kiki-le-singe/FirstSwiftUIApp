//
//  SecureFieldView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 09/09/2022.
//

// https://www.udemy.com/course/swiftui2020/learn/lecture/21159752#overview

import SwiftUI

struct SecureFieldView: View {
    @State var password: String = ""

    var body: some View {
        VStack {
            Text("Your password : \(password)")
            SecureField("Password", text: $password)
        }.padding()
    }
}

struct SecureFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SecureFieldView()
    }
}
