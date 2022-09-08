//
//  PersonView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 08/09/2022.
//

import SwiftUI

struct PersonView: View {
    @Environment(\.presentationMode) var pres

    var person: Person
 
    var body: some View {
        VStack {
            Image(systemName: "person.circle").foregroundColor(person.gender == Gender.female ? .pink : .blue)
            Text(person.name)
            Text("Age: \(person.age)")
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle(person.name, displayMode: .inline)
        .navigationBarItems(
            leading: Button(action: {
                pres.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "chevron.backward")
                Text("Person")
//                Image(systemName: "person.circle")
            })
        )
    }
}

struct PersonView_Previews: PreviewProvider {

    static var previews: some View {
        PersonView(person: Person(name: "Thor", age: 10, gender: .male))
    }
}
