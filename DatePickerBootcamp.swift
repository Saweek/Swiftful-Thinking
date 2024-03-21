/*
    DatePickerBootcamp.swift
*/

import SwiftUI

struct DatePickerBootcamp: View {

    @State var selectedDate: Date = Date()
    let startingDate :Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()

    var dateFormatter: DateForematter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
     
    var body: some View {
        VStack
        {

            Text("SELCTED DATE IS:")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)

            DatePicker("Select a date", selection: $selectedDate)
                .accentColor(Color.red)
                .datePickerStyle(CompactDatePickerStyle())
                // .datePickerStyle(GraphocalDatePickerStyle())
                // .datePickerStyle(WheelDatePickerStyle())

            DatePicker("Select a date", selection: $selectedDate, displayedComponents:[.date, .hourAndMinute])

            DatePicker("Select a date", selection: $selectedDate, in: startingDate...endingDate, )
        }
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
