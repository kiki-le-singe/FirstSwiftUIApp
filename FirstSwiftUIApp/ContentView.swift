//
//  ContentView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 02/09/2022.
//

// TabView:
// - https://medium.com/devtechie/tabview-in-swiftui-f582fd5c6e88
// - https://sarunw.com/posts/swiftui-tabview-color/
// - https://serialcoder.dev/text-tutorials/swiftui/working-with-the-tab-view-in-swiftui/

//TabView {
//    Color.blue
//        .edgesIgnoringSafeArea(.vertical)
//        .tabItem {
//            Image(systemName: "1.circle")
//            Text("Tab 1")
//        }
//
//    Color.orange
//        .edgesIgnoringSafeArea(.vertical)
//        .tabItem {
//            Image(systemName: "2.circle")
//            Text("Tab 2")
//        }
//
//    Color.mint
//        .edgesIgnoringSafeArea(.vertical)
//        .tabItem {
//            Image(systemName: "3.circle")
//            Text("Tab 3")
//        }
//}
//.tabViewStyle(.page)
//.edgesIgnoringSafeArea(.vertical)

import SwiftUI

struct ContentView: View {
    @StateObject var parser = Parser()
    @State var selection = 2

    var body: some View {
        TabView(selection: $selection, content: {
            
            DataFromAPIVIew(parser: parser).tabItem {
                Text("API")
                Image(systemName: "ant.fill")
            }.tag(0)
            
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
            
            UIControlView().tabItem {
                Text("UI Control")
                Image(systemName: "heart.fill")
            }.tag(5)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .previewDevice("iPad Pro (9.7-inch)")
        }
    }
}
