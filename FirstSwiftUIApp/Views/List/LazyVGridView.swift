//
//  LazyVGridView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 09/09/2022.
//

// https://www.udemy.com/course/swiftui2020/learn/lecture/21212578#overview
// https://www.udemy.com/course/swiftui2020/learn/lecture/21212580#overview

import SwiftUI

struct LazyVGridView: View {
    let itemAdaptive = GridItems().adaptive(minimum: 150, maximum: 250)
    let itemFixed = GridItems().fixed(size: 150)
    let itemFlexible = GridItems().flexible(minimum: 150)
    
    var body: some View {
        ScrollView {
//            LazyVGrid(columns: [itemAdaptive], spacing: 10) {
//            LazyVGrid(columns: [itemFixed, itemFixed], spacing: 10) {
            LazyVGrid(columns: [itemFlexible, itemFlexible], spacing: 10) {
                ForEach(0..<1000) { index in
                    SimpleItemView(index: index)
                }
            }
        }
    }
}

struct LazyVGridView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LazyVGridView()
            LazyVGridView()
                .previewDevice("iPad Pro (9.7-inch)")
        }
    }
}
