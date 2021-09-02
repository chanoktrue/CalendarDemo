//
//  CalendarView.swift
//  CalendarDemo
//
//  Created by Thongchai Subsaidee on 2/9/2564 BE.
//

import SwiftUI

struct CalendarView: View {
    
    @State private var date = Date()
    
    var noteDate: Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        return dateFormatter.date(from: "09/01/2021")!
    }
    
    var picker = UIDatePicker()
    
    
    var body: some View {
        VStack {
            
   
            DatePicker("", selection: $date, displayedComponents: [.date]) 
                .datePickerStyle(GraphicalDatePickerStyle())
                .accentColor(.green)

            
            Text("NoteDate: \(noteDate)")
                .padding()
            
           Text("selected: \(date)")
            .padding()
                                  
            
            Spacer()
        }
        
    }
}



struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
