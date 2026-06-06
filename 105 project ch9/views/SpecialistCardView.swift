//
//  SpecialistCardView.swift
//  105 project ch9
//
//  Created by Jonathan Heinzman on 6/3/26.
//

import SwiftUI

struct SpecialistCardView: View {
    var body: some View {
        HStack {
            // Person icon
            Image(systemName: "person.fill")
                .font(.title)
                .foregroundStyle(Color("SurfaceColor"))
                .frame(width: 50, height: 50)
                .background(Color("MainColor"))
                .clipShape(Circle())
                .padding(.leading, 10)
            
            // Specialist info
            VStack(alignment: .leading, spacing: 4){
                Text("Specialist Name")
                    .font(.headline.bold())
                    .foregroundStyle(Color("MainColor"))
                Text("Specialty")
                    .font(.subheadline)
                Text("$100 - $300")
                    .font(.subheadline.bold())
            }
            .padding(10)
            
            VStack{
                // Rating
                HStack(alignment: .center){
                    Image(systemName: "star.fill").foregroundColor(.yellow)
                        .font(.subheadline)
                    Text("4.5")
                        .font(.subheadline)
                }
                
                // Book Appointment
                NavigationLink(destination: BookAppointmentView()){
                    Text("Book")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .frame(width: 60, height: 30)
                        .background(Color("MainColor"))
                        .cornerRadius(10)
                }
            }
            .padding(.leading, 30)
            .padding()
        }
        .frame(width: 350, height: 100)
        .background(.white)
        .cornerRadius(15)
    }
}

#Preview {
    SpecialistCardView()
}
