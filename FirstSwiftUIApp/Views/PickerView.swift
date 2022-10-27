//
//  PickerView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 20/09/2022.
//

// https://www.udemy.com/course/swiftui2020/learn/lecture/21159848#overview

import SwiftUI

struct PickerView: View {
    @State var selected = 0
    var animals = ["Cat", "Dog", "Chicken", "Duck"]

    var body: some View {
        Picker("Animals: \(selected)", selection: $selected){
            ForEach(0..<animals.count, id: \.self) { index in
                Text(animals[index])
            }
        }
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
