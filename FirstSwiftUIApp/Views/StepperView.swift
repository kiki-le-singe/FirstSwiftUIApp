//
//  StepperView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 20/09/2022.
//

// https://www.udemy.com/course/swiftui2020/learn/lecture/21159842#overview

import SwiftUI

struct StepperView: View {
    @State var stepValue: Int = 0

    var body: some View {
        Stepper("Count: \(stepValue)", value: $stepValue)
            .padding(.all, 10)
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
