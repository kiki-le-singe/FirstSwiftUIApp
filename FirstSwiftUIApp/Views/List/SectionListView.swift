//
//  NavListView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 08/09/2022.
//

import SwiftUI

// https://www.udemy.com/course/swiftui2020/learn/lecture/21860678#overview
// .listStyle(PlainListStyle())
// https://www.udemy.com/course/swiftui2020/learn/lecture/21173842#overview

struct SectionListView: View {
    var avengers = ["Thor", "Iron Man", "Captain America", "Hulk", "Spiderman", "Vision", "Wanda"]

    @State var heroes: [Person] = [
        Person(name: "Loki", age: 12, gender: .male),
        Person(name: "Hulk", age: 322, gender: .female),
        Person(name: "Thor", age: 89, gender: .male),
        Person(name: "Iron Man", age: 53, gender: .male),
        Person(name: "Groot", age: 53, gender: .male),
        Person(name: "Batman", age: 4, gender: .female),
        Person(name: "Superman", age: 15, gender: .male),
        Person(name: "Captain Marvel", age: 35, gender: .female),
        Person(name: "Odin", age: 1235, gender: .male),
        Person(name: "Black Panther", age: 15, gender: .male),
        Person(name: "Black Widow", age: 15, gender: .female),
        Person(name: "Wanda", age: 22, gender: .female),
    ]

    var body: some View {
        List {
             Section(header: Text("Avengers")) {
                 ForEach(avengers, id: \.self) { avenger in
                     Text(avenger)
                 }
             }
            
             Section(header: Text("Heroes"), footer: HStack {
                     Spacer()
                     Label("The end", systemImage: "globe.europe.africa.fill").padding()
                     Spacer()
                 }.background(Color.orange)
             ) {
                 ForEach(heroes) { hero in
                     NavigationLink(hero.name, destination: PersonView(person: hero))
                 }
                 .onDelete(perform: deleteItem)
                 .onMove(perform: moveItem)
             }

         }
         .listStyle(PlainListStyle())
         .navigationTitle("Super Heroes")
         .navigationBarItems(trailing: EditButton())
     }

    func deleteItem(at offset: IndexSet) {
        self.heroes.remove(atOffsets: offset)
    }
    
    func moveItem(from offset: IndexSet, to destination: Int) {
        self.heroes.move(fromOffsets: offset, toOffset: destination)
    }
}

struct SectionListView_Previews: PreviewProvider {
    static var previews: some View {
        SectionListView()
    }
}
