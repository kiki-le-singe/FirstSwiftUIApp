//
//  SwiftUIView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 20/09/2022.
//

// https://www.udemy.com/course/swiftui2020/learn/lecture/21159850#overview

import SwiftUI

struct DatePickerView: View {
    @State var date: Date = Date()
    var minDate: Date = Date(timeIntervalSince1970: 0)
    var maxDate: Date = Date(timeIntervalSinceNow: 36000)

    var body: some View {
        DatePicker("Date: \(date)",
            selection: $date,
            in: minDate...maxDate,
            displayedComponents: .date)
        //    displayedComponents: .hourAndMinute)
    }
}

struct DatePicker_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
