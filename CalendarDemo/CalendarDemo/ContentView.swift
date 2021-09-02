//
//  ContentView.swift
//  CalendarDemo
//
//  Created by Thongchai Subsaidee on 2/9/2564 BE.
//

import SwiftUI

extension Date {
    func dateFormatter() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        return formatter.string(from: self)
    }
}

struct ContentView: View {
    
    @State private var date = Date()
    
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2021, month: 1, day: 1)
        let endComponents = DateComponents(year: 2021, month: 12, day: 31, hour: 23, minute: 59, second: 59)
        return calendar.date(from: startComponents)!...calendar.date(from: endComponents)!
    }()
    

    
    var body: some View {
        Form {
            
            Section(header: Text("Selected Date")) {
                Text(date.dateFormatter())
            }
            
            Section(header: Text("Date Pickers")) {
                DatePicker(
                    "Date1",
                    selection: $date,
                    displayedComponents: [.date]
                )
//                .labelsHidden()
            }
            

            Section(header: Text("Date Pickers Limit Date")) {
                DatePicker(
                    "Date2",
                    selection: $date,
                    in: dateRange,
                    displayedComponents: [.date]
                )
            }
            
            Section(header: Text("Stylin Date Pickers")) {
                DatePicker(
                    "Date3",
                    selection: $date,
                    displayedComponents: [.date]
                )
                .datePickerStyle(GraphicalDatePickerStyle())
//                .colorMultiply(date > Date()  ? .red : .green)
                
            }
            
            Section(header: Text("Custom")) {
                DatePicker(
                    "Date4",
                    selection: $date,
                    in: Date()... ,
                    displayedComponents: [.date]
                )
                .datePickerStyle(GraphicalDatePickerStyle())
                .accentColor(.orange)
            }
            
            Section(header: Text("Date")) {
                DatePicker(selection: $date) {
                    Text("Select a date")
                        .font(.title3)
                        .foregroundColor(.red)
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
