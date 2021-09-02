//
//  Calendar2View.swift
//  CalendarDemo
//
//  Created by Thongchai Subsaidee on 2/9/2564 BE.
//

import SwiftUI

struct Calendar2View: View {
    
    @State private var date = Date()
      
      var body: some View {
        ZStack {
            VStack {
                
                DatePicker("Date", selection: $date, displayedComponents: [.date])
                .datePickerStyle(GraphicalDatePickerStyle())
                
            
                Text("\(date)")
            
            Spacer()
            }
        }
      }
}

struct Calendar2View_Previews: PreviewProvider {
    static var previews: some View {
        Calendar2View()
    }
}
