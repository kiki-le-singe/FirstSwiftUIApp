//
//  NavigationView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 05/09/2022.
//

import SwiftUI

struct CustomNavigationView: View {
    @State var btn = false
    @State var btn2 = false
    @State var btn3 = false
    @State var btn4 = false
    @State var btn5 = false
    @State var btn6 = false
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 15, content: {
 
            Button("Show a Modal with a title") {
                btn.toggle()
            }.sheet(isPresented: $btn, content: {
                ScreenWithTitleView()
            })
            
            Button("Show a Modal with a title in FullSize mode") {
                btn2.toggle()
            }.fullScreenCover(isPresented: $btn2, content: {
                ScreenWithTitleView()
            })
            
            Button("Show a simple Modal") {
                btn3.toggle()
            }.sheet(isPresented: $btn3, content: {
                NextView()
            })
            
            Button("Show a modal in FullSize mode") {
                btn4.toggle()
            }.fullScreenCover(isPresented: $btn4, content: {
                NextView().background(Color.gray)
            })
            
            Button("Show NavigationBarItemsView `FullSize`") {
                btn5.toggle()
            }.fullScreenCover(isPresented: $btn5, content: {
                NavigationBarItemsView()
            })
            
            Button("Show NavigationLink `FullSize`") {
                btn6.toggle()
            }.fullScreenCover(isPresented: $btn6, content: {
                NavigationLinkView()
            })
            
            Link("Go to Google", destination: URL(string: "https://www.google.com/")!)
        })
    }
}

struct NextView: View {
    @Environment(\.presentationMode) var pres

    var body: some View {
        VStack(alignment: .center, spacing: 15, content: {
            Text("Hello")
            Button("Close") {
                pres.wrappedValue.dismiss()
            }
        })
    }
}


struct ScreenWithTitleView: View {
    @Environment(\.presentationMode) var pres

    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 15, content: {
                Text("Vue Principale")
                Button("Close") {
                    pres.wrappedValue.dismiss()
                }
            }).navigationTitle("Titre")
        }
    }
}

struct NavigationBarItemsView: View {
    @Environment(\.presentationMode) var pres

    var body: some View {
        NavigationView {
            Text("Main view")
                .navigationTitle("Title")
                .navigationBarItems(
                    leading: Button(action: {
                        pres.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "hare")
                    }),
//                    trailing: Button("Settings", action: {
//                        pres.wrappedValue.dismiss()
//                    })
                    trailing: NavigationLink("Settings",
                                       destination: Text("This is the Settings View"))
                )
            }
    }
}


struct NavigationLinkView: View {
    @Environment(\.presentationMode) var pres

    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 15, content: {
                NavigationLink("Go to the next view",
                   destination: Text("This is the Next View")
                )
                .navigationTitle("Title")
                
                Button("Close") {
                    pres.wrappedValue.dismiss()
                }
            })
        }
    }
}




struct CustomNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationView()
    }
}
