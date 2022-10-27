//
//  NavListView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 08/09/2022.
//

import SwiftUI

// Naviguer dans une liste
// https://www.udemy.com/course/swiftui2020/learn/lecture/21174212#overview
// Supprimer dans une liste
// https://www.udemy.com/course/swiftui2020/learn/lecture/21174522#overview
// Modifier l'ordre dans une liste
// https://www.udemy.com/course/swiftui2020/learn/lecture/21174498#overview

struct NavListView: View {
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
        VStack(content: {
            
            List {
                ForEach(0..<heroes.count, id: \.self) { index in
                    NavigationLink("\(Image(systemName: "person.circle")) \(heroes[index].name)", destination: PersonView(person: heroes[index]))
                }.onDelete { indexSet in
                    heroes.remove(atOffsets: indexSet)
                }.onMove { indecies, newOffset in
                    heroes.move(fromOffsets: indecies, toOffset: newOffset)
                }
            }
            
            List {
                ForEach(heroes) { hero in
                    NavigationLink("\(Image(systemName: "person.circle")) \(hero.name)", destination: PersonView(person: hero))
                }
                .onDelete(perform: deleteItem)
                .onMove(perform: moveItem)
            }
            
        }).navigationBarItems(trailing: EditButton())
    }

    func deleteItem(at offset: IndexSet) {
        self.heroes.remove(atOffsets: offset)
    }
    
    func moveItem(from offset: IndexSet, to destination: Int) {
        self.heroes.move(fromOffsets: offset, toOffset: destination)
    }
}

struct NavListView_Previews: PreviewProvider {
    static var previews: some View {
        NavListView()
    }
}
