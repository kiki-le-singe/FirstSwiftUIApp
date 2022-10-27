//
//  ToggleView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 20/09/2022.
//

// https://www.udemy.com/course/swiftui2020/learn/lecture/21159838#overview

import SwiftUI

struct ToggleView: View {
    @State var toggleBool: Bool = true

    var body: some View {
        Toggle((toggleBool) ? "On": "Off", isOn: $toggleBool)
            .toggleStyle(SwitchToggleStyle(tint: .green))
            .padding(.all, 10)
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
