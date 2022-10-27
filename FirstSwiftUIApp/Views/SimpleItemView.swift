//
//  SimpleItemView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 09/09/2022.
//

import SwiftUI

struct SimpleItemView: View {
    @State var index: Int

    var body: some View {
        Text("index: \(index)")
            .font(.title2)
            .bold()
            .frame(minWidth: 100, maxWidth: .infinity, minHeight: 50, alignment: .center)
            .foregroundColor(Color.orange)
            .background(Color.indigo)
            .cornerRadius(10)
    }
}

struct SimpleItemView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleItemView(index: 1)
            .previewLayout(.sizeThatFits)
    }
}
