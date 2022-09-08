//
//  Person.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 08/09/2022.
//

import Foundation

enum Gender {
    case female, male
}

struct Person: Identifiable {
    var id = UUID()
    var name: String
    var age: Int
    var gender: Gender
}
