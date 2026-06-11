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
    
    @State private var expanded: Bool = false
    
    @State private var isLiked: Bool = false
    
    var body: some View {
        ZStack{
            HStack {
                // Person icon
                Image(specialist.image)
                    .resizable()
                    .scaledToFill()
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
                        .font(.subheadline.italic())
                    
                    Text(specialist.description)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .lineLimit(expanded ? nil : 1)
                    
                    Text(expanded ? "Show less" : "Show more")
                        .font(.caption)
                        .italic()
                        .foregroundColor(.blue)
                        .onTapGesture {
                            expanded.toggle()
                        }
                        
                    Text("$\(specialist.minPrice, specifier: "%.2f") - $\(specialist.maxPrice, specifier: "%.2f")")
                        .font(.footnote)
                }
                .padding(10)
                
                VStack{
                    // Liked Specialist
                    Image(systemName: isLiked ? "heart.fill" : "heart")
                        .font(.title2)
                        .foregroundColor( isLiked ? .red : .gray)
                        .scaleEffect(isLiked ? 1.5 : 1.0)
                        .padding(5)
                    
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
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("\(specialist.name) Top specialist in \(specialist.specialty)")
            .accessibilityHint("Book appointment with \(specialist.name) the price is between \(specialist.minPrice, specifier: "%.2f") and \(specialist.maxPrice, specifier: "%.2f").  \(specialist.name) has a rating of \(specialist.rating, specifier: "%.1f") stars.")
            }
        .onTapGesture(count: 2){
            isLiked.toggle()
        }
    }
}

#Preview {
    SpecialistCardView(
        
        specialist: Specialist(
            name: "Jonathan H.",
            specialty: "Guitar & Bass",
            description: "Experienced guitarist and bassist with over 10 years of experience. I have been playing guitar and bass at various churches for over 10 years.",
            minPrice: 99.99,
            maxPrice: 149.99,
            rating: 5.0,
            image: "person"
        )
        
    )
}
