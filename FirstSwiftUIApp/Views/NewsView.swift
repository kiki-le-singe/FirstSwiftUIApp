//
//  NewsView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 03/09/2022.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10, content: {
            Text("Vue 1")
            Image(systemName: "hare.fill")
            Text("Vue 2")
            Image(systemName: "ant.fill")
            Text("Vue 3")
            HStack(alignment: .top, spacing: 20, content: {
                Image(systemName: "moon.fill")
                Image(systemName: "cloud.sun.rain.fill")
                Image(systemName: "star.fill")
            }).background(.green)
        }).background(.blue)
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
