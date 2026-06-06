//
//  BookAppointmentView.swift
//  105 project ch9
//
//  Created by Jonathan Heinzman on 6/3/26.
//

import SwiftUI

struct BookAppointmentView: View {
    var body: some View {
        VStack(spacing: 30){

            Image(systemName: "progress.indicator")
                .font(Font.largeTitle.bold())
                
            Text("Book an Appointment")
                .font(Font.largeTitle.bold())
            
            Text("Coming Soon!")
                .foregroundStyle(.gray)
            
        }
        .navigationTitle(Text("Book Appointment"))
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    BookAppointmentView()
}
