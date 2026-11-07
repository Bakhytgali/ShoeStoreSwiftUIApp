//
//  ContentView.swift
//  ShoeStoreApp
//
//  Created by Rakhat Bakhytgali on 01.11.2026.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isWelcomeScreenSeen") private var isWelcomeScreenSeen = false
    
    var body: some View {
        NavigationStack {
            if !isWelcomeScreenSeen {
                WelcomeView(isWelcomeScreenSeen: $isWelcomeScreenSeen)
            } else {
                HomeView()
            }
        }
    }
}

#Preview {
    ContentView()
}
