//
//  CategoryCardView.swift
//  105 project ch9
//
//  Created by Jonathan Heinzman on 6/3/26.
//

import SwiftUI

struct CategoryCardView: View {
    
    let icon: String
    let title: String
    
    var body: some View {
        VStack {
            Image(systemName: icon)
                .font(.title)
                .foregroundStyle(Color("SurfaceColor"))
                .frame(width: 50, height: 50)
                .background(Color("MainColor"))
                .clipShape(Circle())
            
            Text(title)
                .font(.headline)
        }
        .frame(width: 100, height: 100)
        .background(.white)
        .cornerRadius(10)
    }
}

#Preview {
    CategoryCardView(icon: "hand.raised", title: "Nails")
}
