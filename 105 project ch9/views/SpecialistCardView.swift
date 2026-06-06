//
//  SpecialistCardView.swift
//  105 project ch9
//
//  Created by Jonathan Heinzman on 6/3/26.
//

import SwiftUI

struct SpecialistCardView: View {
    
    let specialist: Specialist
    // let name = String
    
    
    var body: some View {
        HStack {
            // Person icon
            Image(systemName: specialist.image)
                .font(.title)
                .foregroundStyle(Color("SurfaceColor"))
                .frame(width: 50, height: 50)
                .background(Color("MainColor"))
                .clipShape(Circle())
                .padding(.leading, 10)
            
            // Specialist info
            VStack(alignment: .leading, spacing: 4){
                Text(specialist.name)
                    .font(.headline.bold())
                    .foregroundStyle(Color("AccentBlue"))
                Text(specialist.specialty)
                    .font(.subheadline)
                Text("$\(specialist.minPrice, specifier: "%.2f") - $\(specialist.maxPrice, specifier: "%.2f")")
                    .font(.footnote)
            }
            .padding(10)
            
            VStack{
                // Rating
                HStack(alignment: .center){
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .font(.subheadline)
                    Text(String(specialist.rating))
                        .font(.subheadline)
                }
                
                // Book Appointment
                NavigationLink(destination: BookAppointmentView()){
                    Text("Book")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .frame(width: 60, height: 30)
                        .background(Color("AccentBlue"))
                        .cornerRadius(10)
                }
            }
            .padding(.leading, 30)
            .padding()
        }
        .padding()
        .background(.white)
        .cornerRadius(15)
    }
}

#Preview {
    SpecialistCardView(
        
        specialist: Specialist(
            name: "Jonathan H.",
            specialty: "Guitar",
            minPrice: 99.99,
            maxPrice: 149.99,
            rating: 5.0,
            image: "person"
        )
        
    )
}
