//
//  ListStaticView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 07/09/2022.
//

import SwiftUI

// https://www.udemy.com/course/swiftui2020/learn/lecture/21174178#overview

struct ListStaticView: View {
    var body: some View {
        List {
            Text("Thor")
            Text("Loki")
            Text("Iron Man")
            Text("Groot")
            Text("Hulk")
            Text("Spiderman")
            Text("Iron man")
        }
    }
}

struct ListStaticView_Previews: PreviewProvider {
    static var previews: some View {
        ListStaticView()
    }
}
