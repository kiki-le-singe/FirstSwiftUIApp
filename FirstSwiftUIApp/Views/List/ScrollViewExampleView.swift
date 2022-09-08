//
//  ScrollViewExampleView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 07/09/2022.
//

import SwiftUI

// https://www.udemy.com/course/swiftui2020/learn/lecture/21159376#overview

struct ScrollViewExampleView: View {
    var body: some View {
        ScrollView(showsIndicators: true) {
            VStack {
                Color.orange.frame(height: 200, alignment: .center)
                Color.blue.frame(height: 200, alignment: .center)
                Color.purple.frame(height: 200, alignment: .center)
                Color.yellow.frame(height: 200, alignment: .center)
                Color.green.frame(height: 200, alignment: .center)
                Color.gray.frame(height: 200, alignment: .center)
            }
        }
        .background(.black)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ScrollViewExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewExampleView()
    }
}
