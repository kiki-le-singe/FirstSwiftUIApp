//
//  SwiftUIView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 07/09/2022.
//

import SwiftUI

// https://www.udemy.com/course/swiftui2020/learn/lecture/21174196#overview

struct ListView: View {

    var body: some View {
        
        NavigationView {
            VStack(alignment: .center, spacing: 15, content: {
                NavigationLink("ScrollView",
                   destination: ScrollViewExampleView()
                )
                NavigationLink("ForEach",
                   destination: ForEachView()
                )
                NavigationLink("Static List",
                   destination: ListStaticView()
                )
                NavigationLink("Dynamic List",
                   destination: ListDynamicView()
                )
                NavigationLink("Object List",
                   destination: ListObjectView()
                )
                NavigationLink("Navigation List",
                   destination: NavListView()
                )
                NavigationLink("Section List",
                   destination: SectionListView()
                )
                NavigationLink("LazyVStack View",
                   destination: LazyVStackView()
                )
                NavigationLink("LazyHStack View",
                   destination: LazyHStackView()
                )
                NavigationLink("LazyVGrid View",
                   destination: LazyVGridView()
                )
            })
            
            // comment above code to see the LazyHGrid View
            // uncomment below code...
//            VStack {
//
//                NavigationLink("LazyHGrid View",
//                   destination: LazyHGridView()
//                )
//            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
