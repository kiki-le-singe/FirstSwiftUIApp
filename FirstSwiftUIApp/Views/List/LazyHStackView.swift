//
//  LazyHStackView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 09/09/2022.
//

// https://www.udemy.com/course/swiftui2020/learn/lecture/21209830#overview

import SwiftUI

struct LazyHStackView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 20) {
                ForEach(0..<1000) { index in
                    SimpleItemView(index: index)
                }
            }
        }
    }
}

struct LazyHStackView_Previews: PreviewProvider {
    static var previews: some View {
        LazyHStackView()
    }
}
