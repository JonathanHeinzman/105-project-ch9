//
//  SpecialistView.swift
//  105 project ch9
//
//  Created by Jonathan Heinzman on 6/3/26.
//

import SwiftUI

struct SpecialistView: View {
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
                        
                        Text("Find Your\nBeauty Specialist!")
                            .font(.largeTitle.bold())
                            .foregroundStyle(.white)
                            .multilineTextAlignment(.center)
                        
                        
                        TextField("Search...", text: .constant(""))
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
                                        .foregroundStyle(Color("MainColor"))
                                }
                                
                            }
                            
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack(spacing: 20){
                                    CategoryCardView(icon: "hand.raised", title: "Nails")
                                        
                                    CategoryCardView(icon: "eye.fill", title: "Lashes")
                                        
                                    CategoryCardView(icon: "wind", title: "Hair")
                                        
                                    CategoryCardView(icon: "eyebrow", title: "Eyebrows")
                                        
                                    CategoryCardView(icon: "face.smiling", title: "facial")
                                        
                                }
                            }
                            
                        }// END: Categories
                        .padding(.horizontal, 30)
                        .padding(.vertical, 20)
                        
                        // Top Specialist
                        VStack(alignment: .leading, spacing: 20){
                            Text("Top Specialist")
                                .font(.title2.bold())
                            
                            
                            ScrollView(.vertical, showsIndicators: false){
                                VStack(spacing: 20){
                                    SpecialistCardView()
                                    
                                    SpecialistCardView()
                                    
                                    SpecialistCardView()
                                    
                                    SpecialistCardView()
                                    
                                    SpecialistCardView()
                                }
                            }
                        } // END: Top Specialist
                        .padding(.vertical, 10)
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
