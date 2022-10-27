//
//  SegmentedControlView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 20/09/2022.
//

// https://www.udemy.com/course/swiftui2020/learn/lecture/21159844#overview

import SwiftUI

struct SegmentedPickerView: View {
    @State var selected: Int = 0
    var repas: [String] = ["Breakfast", "Lunch", "Dinner"]

    var body: some View {
        Picker("What is your favorite moment of the day?", selection: $selected) {
            ForEach(0..<repas.count, id: \.self) { index in
                Text(repas[index])
            }
        }.pickerStyle(SegmentedPickerStyle())
    }
}

struct SegmentedPickerView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedPickerView()
    }
}
