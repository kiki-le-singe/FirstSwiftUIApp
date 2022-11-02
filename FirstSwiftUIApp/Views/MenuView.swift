//
//  MenuView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 01/11/2022.
//

// https://www.hackingwithswift.com/quick-start/swiftui/how-to-show-a-menu-when-a-button-is-pressed

import SwiftUI

struct MenuView: View {
    var body: some View {
        Menu {
            Button(action: {

            }) {
                Label("Delete", systemImage: "minus.circle")
            }
            Button(action: {

            }) {
                Label("Edit", systemImage: "pencil.circle")
            }
        } label: {
            Image(systemName: "ellipsis.circle")
        }
        
//        Menu("Edit") {
//            Menu("Arrange") {
//                Button("Bring to Front", action: {})
//                Button("Send to Back", action: {})
//            }
//            Button("Delete", action: {})
//        }
        
//    primaryAction: {
//            justDoIt()
//        }
    }
    
//    func justDoIt() {
//        print("Button was tapped")
//    }
    
//    var body: some View {
//        Menu("Options") {
//            Button("Order Now", action: placeOrder)
//            Button("Adjust Order", action: adjustOrder)
//            Button("Cancel", action: cancelOrder)
//        }
//    }
//
//    func placeOrder() { }
//    func adjustOrder() { }
//    func cancelOrder() { }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
