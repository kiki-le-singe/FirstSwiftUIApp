//
//  ActionSheetView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 21/09/2022.
//

// https://www.udemy.com/course/swiftui2020/learn/lecture/21211776#overview

import SwiftUI

struct ActionSheetView: View {
    @State var showAction = false
    @State var font: Font = Font.system(.title)

    var body: some View {
        Button(action: {
            showAction.toggle()
        }, label: {
            Text("Choose your Font")
                .font(font)
                .multilineTextAlignment(.center)
        }).actionSheet(isPresented: $showAction) {
            ActionSheet(
                title: Text("This is an ActionSheet"),
                message: Text("Choose your font"),
                buttons: [
                    .default(Text("Title"), action: {
                        font = Font.system(.title)
                    }),
                    .default(Text("SubHeadline"), action: {
                        font = Font.system(.subheadline)
                    }),
                    .default(Text("Body"), action: {
                        font = Font.system(.body)
                    }),
                    .destructive(Text("Footnote"), action: {
                        font = Font.system(.footnote)
                    }),
                    .destructive(Text("Large"), action: {
                        font = Font.system(.largeTitle)
                    }),
                    .cancel()
                ]
            )
        }
    }
}

struct ActionSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetView()
    }
}
