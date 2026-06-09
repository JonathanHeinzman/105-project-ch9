//
//  ContentView.swift
//  105 project ch9
//
//  Created by Jonathan Heinzman on 6/3/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("❤️") {
                print("Liked")
            }
            .accessibilityLabel("Like this photo")
        }
    }
}

#Preview {
    ContentView()
}
