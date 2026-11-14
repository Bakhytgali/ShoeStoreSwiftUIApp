//
//  CartView.swift
//  ShoeStoreApp
//
//  Created by Rakhat Bakhytgali on 11.11.2026.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject private var shopManager: ShopManager
    
    var body: some View {
        ZStack {
            if shopManager.userCart.isEmpty {
                Text("Your cart is currently empty")
                    .font(.headline)
                    .foregroundStyle(.gray)
            } else {
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVStack(spacing: 5) {
                        ForEach(shopManager.userCart) { shoe in
                            CartShoeCardComponent(
                                shoe: shoe,
                                onCardButtonPress: {
                                    shopManager.toggleCart(shoe: shoe)
                                },
                                isShoeAdded: shopManager.shoeAlreadyInCart(shoe: shoe)
                            )
                        }
                    }
                }
            }
        }
        .navigationTitle("Cart")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    CartView()
        .environmentObject(ShopManager())
}
