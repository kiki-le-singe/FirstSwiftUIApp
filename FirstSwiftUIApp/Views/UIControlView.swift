//
//  InteractiveComponentsView.swift
//  FirstSwiftUIApp
//
//  Created by Anthony Albertini on 09/09/2022.
//

import SwiftUI

struct UIControlView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Buttons")) {
                    NavigationLink("Button Text", destination: ButtonTextView())
                    NavigationLink("Button Label", destination: ButtonLabelView())
                }
                Section(header: Text("Texts")) {
                    NavigationLink("TextField", destination: TextFieldView())
                    NavigationLink("SecureField", destination: SecureFieldView())
                    NavigationLink("TextEditor", destination: TextEditorView())
                }
                Section(header: Text("Tappable")) {
                    NavigationLink("Toggle", destination: ToggleView())
                    NavigationLink("Stepper", destination: StepperView())
                    NavigationLink("Slider", destination: SliderView())
                    NavigationLink("Picker", destination: PickerView())
                    NavigationLink("DatePicker", destination: DatePickerView())
                    NavigationLink("Segmented Picker", destination: SegmentedPickerView())
                }
                Section(header: Text("Alerts")) {
                    NavigationLink("Alert", destination: AlertView())
                    NavigationLink("ActionSheet", destination: ActionSheetView())
                    NavigationLink("ContextMenu", destination: ContextMenuView())
                }
            }.listStyle(SidebarListStyle())
                .navigationTitle("UI Control")
        }
    }
}

struct UIControlView_Previews: PreviewProvider {
    static var previews: some View {
        UIControlView()
    }
}
