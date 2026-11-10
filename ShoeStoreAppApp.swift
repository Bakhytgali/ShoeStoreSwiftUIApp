//
//  ShoeStoreAppApp.swift
//  ShoeStoreApp
//
//  Created by Rakhat Bakhytgali on 01.11.2026.
//

import SwiftUI

@main
struct ShoeStoreAppApp: App {
    @StateObject private var shopManager = ShopManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .environmentObject(shopManager)
    }
}
