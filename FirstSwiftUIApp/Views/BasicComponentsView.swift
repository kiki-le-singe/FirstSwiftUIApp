//
//  BasicComponentsView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 06/09/2022.
//

import SwiftUI

struct BasicComponentsView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 35, content: {
            
            // Text component: https://www.udemy.com/course/swiftui2020/learn/lecture/21155918#overview
            Text("This is a string \n This is a second line \n This is a third line")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding()
                .background(Color.primary)
                .cornerRadius(20)
            
            // Image component:https://www.udemy.com/course/swiftui2020/learn/lecture/21155922#overview
            Image("apple")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100, alignment: .center)
                .clipped()
            
            Image("profile")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150, alignment: .center)
                .clipShape(Circle())
                .shadow(color: .black, radius: 10, x: 1, y: 3)
            
        // GeometryReader (Allow to make responsive UI):  https://www.udemy.com/course/swiftui2020/learn/lecture/21156142#overview
//            GeometryReader { geometry in
//            }
            
            // Create an Background
//            Image("apple")
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .edgesIgnoringSafeArea(.all)
    
            // Spacer: https://www.udemy.com/course/swiftui2020/learn/lecture/21278562#overview
            Spacer()
            
            // SF Symbols Image: https://www.udemy.com/course/swiftui2020/learn/lecture/21155928#overview
            Image(systemName: "tortoise").foregroundColor(.white)
            
            // Divider: https://www.udemy.com/course/swiftui2020/learn/lecture/21278570#overview
            Divider().background(.white)
            
            // Label: https://www.udemy.com/course/swiftui2020/learn/lecture/21155930#overview
            Label("I am a label Tortoise", systemImage: "tortoise.fill")
            
            // Button: https://www.udemy.com/course/swiftui2020/learn/lecture/21155940#overview
            Button("Click me!") {
                //Code a effectuer lorsque le bouton est appuyé
            }.foregroundColor(.white)
            
        })
        // Background: https://www.udemy.com/course/swiftui2020/learn/lecture/21155984#overview
        .background(
            Image("apple")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
        )
    }
}

struct BasicComponentsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BasicComponentsView()
            BasicComponentsView()
                .previewDevice("iPhone 8")
        }
    }
}
