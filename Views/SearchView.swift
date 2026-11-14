//
//  SearchView.swift
//  ShoeStoreApp
//
//  Created by Rakhat Bakhytgali on 14.11.2026.
//

import SwiftUI

struct SearchView: View {
    @EnvironmentObject var shopManager: ShopManager
    @State private var searchText: String = ""
    
    private var trimmedText: String {
        searchText.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    private var searchResults: [ShoeModel] {
        shopManager.searchShoes(searchText: trimmedText)
    }
    
    var body: some View {
        ZStack {
            if trimmedText.isEmpty {
                Text("Search the shoes")
                    .font(.headline)
                    .foregroundStyle(.gray)
            } else if searchResults.isEmpty {
                Text("No shoes found")
                    .font(.headline)
                    .foregroundStyle(.gray)
            } else {
                ScrollView(showsIndicators: false) {
                    LazyVStack {
                        ForEach(searchResults) { shoe in
                            NavigationLink(value: shoe) {
                                CartShoeCardComponent(
                                    shoe: shoe,
                                    onCardButtonPress: {
                                        shopManager.toggleCart(shoe: shoe)
                                    },
                                    isShoeAdded: shopManager.shoeAlreadyInCart(shoe: shoe)
                                    
                                )
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
            }
        }
        .navigationDestination(for: ShoeModel.self) { shoe in
                ShoeItemView(shoe: shoe)
            }
        .searchable(text: $searchText, prompt: "Search Shoes")
    }
}

#Preview {
    SearchView()
}
