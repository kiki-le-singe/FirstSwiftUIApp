//
//  LazyHGridView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 09/09/2022.
//

// https://www.udemy.com/course/swiftui2020/learn/lecture/21212584#overview
// https://www.udemy.com/course/swiftui2020/learn/lecture/21212580#overview

import SwiftUI

struct LazyHGridView: View {
    let itemAdaptive = GridItems().adaptive(minimum: 50, maximum: 60)
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: [itemAdaptive, itemAdaptive], spacing: 15) {
                ForEach(0..<1000) { index in
                    SimpleItemView(index: index)
                }
            }
        }
    }
}

struct LazyHGridView_Previews: PreviewProvider {
    static var previews: some View {
        LazyHGridView()
        LazyHGridView()
            .previewDevice("iPad Pro (9.7-inch)")
    }
}
