//  Created by Trevis Suwanwigo.

import SwiftUI

struct DatePickerView: View {
    @State private var date = Date()

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Displayed Components")) {
                    DatePicker("Default", selection: $date)
                    DatePicker("Date", selection: $date, displayedComponents: .date)
                    DatePicker("Time", selection: $date, displayedComponents: .hourAndMinute)
                }
                Section(header: Text("Date Range")) {
                    DatePicker("Until Today", selection: $date, in: ...Date(), displayedComponents: .date)
                    DatePicker("From Today", selection: $date, in: Date()..., displayedComponents: .date)
                }
                Section(header: Text("STYLE")) {
                    DatePicker("Automatic", selection: $date, in: ...Date(), displayedComponents: .date)
                        .datePickerStyle(.automatic)
                    DatePicker("Compact", selection: $date, in: ...Date(), displayedComponents: .date)
                        .datePickerStyle(.compact)
                    DatePicker("Graphical", selection: $date, in: ...Date(), displayedComponents: .date)
                        .datePickerStyle(.graphical)
                    DatePicker("Graphical", selection: $date, in: ...Date(), displayedComponents: .date)
                        .datePickerStyle(.wheel)
                }
            }
            .navigationTitle("DatePicker")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
