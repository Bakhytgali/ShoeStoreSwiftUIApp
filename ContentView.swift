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
            if !isWelcomeScreenSeen {
                WelcomeView(isWelcomeScreenSeen: $isWelcomeScreenSeen)
            } else {
                TabView {
                    NavigationStack {
                        HomeView()
                    }.tabItem {
                        Label("Home", systemImage: "house")
                    }
                    
                    NavigationStack {
                        CartView()
                    }.tabItem {
                        Label("Cart", systemImage: "cart")
                    }
                }
            }
    }
}

#Preview {
    ContentView()
}
