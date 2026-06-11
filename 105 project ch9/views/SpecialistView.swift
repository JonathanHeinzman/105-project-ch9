//
//  SpecialistView.swift
//  105 project ch9
//
//  Created by Jonathan Heinzman on 6/3/26.
//

import SwiftUI

struct SpecialistView: View {
    
    let specialistList : [Specialist] = [
        Specialist(
            name: "Jonathan H.",
            specialty: "Guitar & Bass",
            description: "Experienced guitarist and bassist with over 10 years of experience. I have been playing guitar and bass at various churches for over 10 years.",
            minPrice: 99.99,
            maxPrice: 149.99,
            rating: 5.0,
            image: "JonathanGuitar"),
        Specialist(
            name: "Josh Ham",
            specialty: "Bass",
            description: "Experienced bass player with over 10 years of experience. I have been playing guitar and bass at various churches for over 10 years.",
            minPrice: 99.99,
            maxPrice: 149.99,
            rating: 5.0,
            image: "JoshBass"),
        Specialist(
            name: "Brent A.",
            specialty: "Piano",
            description: "Experienced guitarist and bassist with over 10 years of experience. I have been playing guitar and bass at various churches for over 10 years.",
            minPrice: 99.99,
            maxPrice: 299.99,
            rating: 5.0,
            image: "Piano"),
        Specialist(
            name: "Sharon A.",
            specialty: "Drums",
            description: "Experienced guitarist and bassist with over 10 years of experience. I have been playing guitar and bass at various churches for over 10 years.",
            minPrice: 99.99,
            maxPrice: 349.99,
            rating: 5.0,
            image: "Drummer"),
        Specialist(
            name: "Ashlie H.",
            specialty: "Vocals",
            description: "Experienced guitarist and bassist with over 10 years of experience. I have been playing guitar and bass at various churches for over 10 years.",
            minPrice: 99.99,
            maxPrice: 149.99,
            rating: 5.0,
            image: "Baby")
    ]
    
    @State private var searchText: String = ""
    
    
    var filteredList: [Specialist] {
        if searchText.isEmpty {
            return specialistList
        }else{
            return specialistList.filter {
                $0.name.localizedCaseInsensitiveContains(searchText) ||
                $0.specialty.lowercased().contains(searchText.lowercased())
            }
        }
    }
    
    var body: some View {
        // Navigation container for the screen
        NavigationStack {
            
            // background color
            ZStack {
                Color("MainColor")
                    .ignoresSafeArea()
                
                // Main Stack
                VStack (spacing: 30){
                    
                    // MARK: - Title and Search Box
                    VStack(spacing: 30){
                        VStack{
                            Text("Find Your")
                                .font(.largeTitle.bold())
                                .foregroundStyle(.white)
                            
                            HStack{
                                Text("Music Mentor")
                                    .font(.largeTitle.bold())
                                    .foregroundStyle(.white)
                                Image(systemName: "music.note")
                                    .foregroundStyle(Color("AccentBlue"))
                                    .font(.largeTitle.bold())
                            }
                        }
                        
                        TextField("Search...", text: $searchText)
                            .padding()
                            .background(.white)
                            .cornerRadius(7)
                            .padding(.horizontal, 40)
                    }
                    
                    // MARK: - Sections: Categories & Top Specialist
                    VStack{
                        
                        // Categories
                        VStack(spacing: 20){
                            
                            HStack{
                                Text("Categories")
                                    .font(.title2.bold())
                                
                                Spacer()
                                
                                NavigationLink(destination: CategoriesView()){
                                    Text("See All")
                                        .font(.headline)
                                        .foregroundStyle(Color("AccentBlue"))
                                        .accessibilityLabel("See all")
                                        .accessibilityHint("Showing all the categories")
                                    
                                }
                                
                            }
                            
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack(spacing: 20){
                                    CategoryCardView(icon: "guitars", title: "Guitar")
                                    
                                    CategoryCardView(icon: "guitars", title: "Bass")
                                    
                                    CategoryCardView(icon: "pianokeys", title: "Piano")
                                    
                                    CategoryCardView(icon: "metronome", title: "Drums")
                                    
                                    CategoryCardView(icon: "music.mic", title: "Vocals")
                                    
                                }
                            }
                            
                        }// END: Categories
                        .padding(.horizontal, 30)
                        .padding(.vertical, 20)
                        
                        // Top Specialist
                        VStack(alignment: .leading, spacing: 20){
                            Text("Top Specialists")
                                .font(.title2.bold())
                            //.onLongPressGesture {}
                            
                            ScrollView(.vertical, showsIndicators: false){
                                VStack(spacing: 20){
                                    ForEach(filteredList){ specialist in
                                        SpecialistCardView(specialist : specialist)
                                        
                                    }
                                }
                            }
                        } // END: Top Specialist
                        .padding(.vertical, 10)
                        .padding(.horizontal, 20)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color("SurfaceColor"))
                } // END: VStack - Main Stack
            } // END: ZStack - Background color
        } // END: NavigationStack
    } // END: body
} // END: SpecialistView

#Preview {
    SpecialistView()
}
