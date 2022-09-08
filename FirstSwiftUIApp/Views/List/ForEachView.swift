//
//  ForEachView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 07/09/2022.
//

import SwiftUI

// https://www.udemy.com/course/swiftui2020/learn/lecture/21174174#overview

struct ForEachView: View {
    var colors: [Color] = [.red, .blue, .green, .gray, .pink, .yellow, .orange, .purple]

    var body: some View {
        ScrollView {
            VStack {
                ForEach(colors, id: \.self) { color in
                    color.frame(height: 200)
                }
                
                ForEach(0..<10) { index in
                    Text("\(index)")
                    Image("profile")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 150, alignment: .center)
                        .clipShape(Circle())
                }
            }
        }
    }
}

struct ForEachView_Previews: PreviewProvider {
    static var previews: some View {
        ForEachView()
    }
}
