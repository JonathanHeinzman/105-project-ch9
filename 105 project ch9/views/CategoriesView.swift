//
//  CategoriesView.swift
//  105 project ch9
//
//  Created by Jonathan Heinzman on 6/3/26.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        VStack(spacing: 30){

            Image(systemName: "progress.indicator")
                .font(Font.largeTitle.bold())
                
            Text("All Categories")
                .font(Font.largeTitle.bold())
            
            Text("Coming Soon!")
                .foregroundStyle(.gray)
            
        }
        .navigationTitle(Text("All Categories"))
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    CategoriesView()
}
