//
//  SliderView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 20/09/2022.
//

// https://www.udemy.com/course/swiftui2020/learn/lecture/21159846#overview

import SwiftUI

struct SliderView: View {
    @State var value: CGFloat = 50
    var min: CGFloat = 0
    var max: CGFloat = 100
    var step: CGFloat = 1

    var body: some View {
        VStack {
            #if os(iOS)
            Text("Current value: \(Int(value))")
            #endif

            Slider(
                value: $value,
                in: min...max,
                step: step,
                onEditingChanged: { (success) in
                    print("Succes: \(success)")
                },
                minimumValueLabel: Text("min"),
                maximumValueLabel: Text("max")) {
                    Text("Valeur actuelle: \(Int(value))")
                }
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
