//
//  ContextMenuView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 21/09/2022.
//

// https://www.udemy.com/course/swiftui2020/learn/lecture/21211782#overview

import SwiftUI

struct ContextMenuView: View {
    @State var backgroundColor: Color = .indigo

    var body: some View {
        Label("ContextMenu", systemImage: "magnifyingglass")
            .foregroundColor(Color.white)
            .padding()
            .background(backgroundColor)
            .clipShape(Capsule())
            .contextMenu(
                ContextMenu(
                    menuItems: {
                        Text("This is a context menu")
                        Button("Change Background color") {
                            backgroundColor = (backgroundColor == .indigo) ? .orange : .indigo
                        }
                        Text("Menu Item 3")
                    }
                )
            )
    }
}

struct ContextMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuView()
    }
}
