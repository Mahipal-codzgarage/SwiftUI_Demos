//
//  DatepickerBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 23/01/23.
//

import SwiftUI

struct DatepickerBootcamp: View {

    @State var selelctedDate:Date = Date()

    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018))!
    let endingDate: Date = Date()

    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }

    var body: some View {
        VStack {

            Text("Selected Date is:")
            Text(dateFormatter.string(from: selelctedDate))
                .font(.subheadline)

            DatePicker(selection: $selelctedDate, displayedComponents: [.date, .hourAndMinute], label: {
                Text("Select a date")
            })
            .tint(Color.green)
            .foregroundColor(.red)
            .datePickerStyle(.compact)

            DatePicker("Select new date", selection: $selelctedDate, in: startingDate...endingDate,  displayedComponents: [.date])
                .tint(Color.red)
                .datePickerStyle(.compact)
        }
    }
}

struct DatepickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatepickerBootcamp()
    }
}
