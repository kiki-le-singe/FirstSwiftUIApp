//
//  AlertView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 21/09/2022.
//

// https://www.udemy.com/course/swiftui2020/learn/lecture/21159428#overview

import SwiftUI

struct AlertView: View {
    @State var showAlert = false
    @State var color: Color = .blue

    var body: some View {
        Button("Show Alert") {
            showAlert.toggle()
        }.alert(isPresented: $showAlert) {
            Alert(
                title: Text("Alert"),
                message: Text("This is an Alert"),
                primaryButton: .default(Text("Change Color"), action: {
                color = (color == .green) ? .blue : .green
            }),
                secondaryButton: .destructive(Text("Annuler")))
        }.foregroundColor(color)
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
