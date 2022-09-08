//
//  ListObjectView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 07/09/2022.
//

import SwiftUI

struct ListObjectView: View {
    var heroes: [Person] = [
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
        
        VStack(alignment: .center, spacing: 15, content: {
        
            List(heroes) { hero in
                HStack {
                    Image(systemName: "person.circle").foregroundColor(hero.gender == Gender.female ? .pink : .blue)
                    
                    VStack(alignment: .leading, spacing: 5, content: {
                        Text("\(hero.name) \n \(hero.gender == Gender.female ? "female" : "male")")
                            .multilineTextAlignment(.center)
                            .font(.title3)
                        
                        Text("Age: \(hero.age)")
                            .foregroundColor(.secondary)
                            .font(.subheadline)
                    })
                    
                }
                
            }
            
            List {
                ForEach(heroes) { hero in
                    Text(hero.name)
                }
            }
            
            List {
                ForEach(0..<heroes.count, id: \.self) { index in
                    Text(heroes[index].name)
                }
            }
        })
    }
}

struct ListObjectView_Previews: PreviewProvider {
    static var previews: some View {
        ListObjectView()
    }
}
