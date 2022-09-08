//
//  ListDynamicView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 07/09/2022.
//

// https://www.udemy.com/course/swiftui2020/learn/lecture/21174188#overview

import SwiftUI

struct ListDynamicView: View {
    var array = ["Thor", "Hulk", "Odin", "Groot"]

    var body: some View {
        
        VStack(alignment: .center, spacing: 15, content: {
            List(array, id: \.self) { name in
                Text(name)
            }
            
            List(0..<array.count, id: \.self) { index in
                Text(array[index])
            }
        })
    }
}

struct ListDynamicView_Previews: PreviewProvider {
    static var previews: some View {
        ListDynamicView()
    }
}
