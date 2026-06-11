//
//  GesturesView.swift
//  105 project ch9
//
//  Created by Jonathan Heinzman on 6/10/26.
//

import SwiftUI

struct GesturesView: View {
    
    var paragraph: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis ante ac dui laoreet tempus. Donec nec consectetur nisl. Duis porta scelerisque eros ut egestas. Duis suscipit dignissim risus, eu cursus dolor vulputate nec. Mauris vel aliquet purus."
    
    @State private var expanded: Bool = false
    
    @State private var isLiked: Bool = false
    
    var body: some View {
        
        // MARK: - Exercise 1 - Tab
        // .onTapGesture -> Text, Images, Stacks (V, H, Z).
        Text("Tap Me")
            .onTapGesture{
                print("Tapped")
            }
        
        // MARK: - Exercise 2 - Expand Text with a Tap
        VStack(alignment: .leading, spacing: 10) {
            
            Text(paragraph)
                .lineLimit(expanded ? nil : 2)
            
            Text(expanded ? "Show less" : "Show more")
                .italic()
                .foregroundColor(.blue)
                .onTapGesture {
                    expanded.toggle()
                }
        }
        .padding(35)
        
        // MARK: - Exercise 3 - Double Tap
        Text("Double Tap Me")
            .onTapGesture(count: 2){
                print("Double Tapped")
            }
        
        // MARK: - Exercise 4 - Double Tap - Like/Fav Feature
        Image(systemName: isLiked ? "heart.fill" : "heart")
            .font(.title2)
            .foregroundColor( isLiked ? .red : .gray)
            .onTapGesture(count: 2){
                isLiked.toggle()
            }
        
        ZStack {
            
            // My Design
            HStack {
                
                Image("JonathanGuitar")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 75, height: 75)
                    .clipShape(.circle)
                
                VStack(alignment: .leading) {
                    Text("Jonathan Heinzman")
                        .font(.title2)
                    
                    Text("Software Engineer")
                        .font(.subheadline.italic())
                }
                
                Spacer()
                
                Image(systemName: isLiked ? "heart.fill" : "heart")
                    .font(.title2)
                    .foregroundColor( isLiked ? .red : .gray)
                    .scaleEffect(isLiked ? 1.5 : 1.0)
            }
            .padding(.vertical, 40)
            .padding(.horizontal, 20)
            .background(Color("SurfaceColor"))
        }
        .onTapGesture(count: 2){
            withAnimation(.spring){
                isLiked.toggle()
            }
        }
        
        // MARK: - Exercise 5 - Long Press
        Text("Long Press Me")
            .onLongPressGesture{
                print("Long Pressed")
            }
        Image("JonathanGuitar")
            .resizable()
            .scaledToFit()
            .frame(width: 100)
            .contextMenu {
                Button("Action1"){}
                Button("Action2"){}
            }
        
    }
}

#Preview {
    GesturesView()
}
