//
//  ContentView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 02/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var selection = 2

    var body: some View {
        TabView(selection: $selection, content: {
            
            NewsView().tabItem {
                Text("Hare")
                Image(systemName: "hare.fill")
            }.tag(1)
            
            ListView().tabItem {
                Text("List")
                Image(systemName: "list.star")
            }.tag(2)
            
            BasicComponentsView().tabItem {
                Text("Components")
                Image(systemName: "ant.fill")
            }.tag(3)
            
            CustomNavigationView().tabItem {
                Text("Navigation")
                Image(systemName: "list.bullet")
            }.tag(4)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
