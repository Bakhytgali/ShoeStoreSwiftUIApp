//
//  HomeView.swift
//  ShoeStoreApp
//
//  Created by Rakhat Bakhytgali on 02.11.2026.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Trending")
                .font(.title)
                .bold()
                .padding(15)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 15) {
                    ForEach(ShopManager.shoesList) { shoe in
                        NavigationLink(value: shoe) {
                            ShoeCardComponent(shoeModel: shoe)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding(.horizontal, 15)
            }
            .navigationDestination(for: ShoeModel.self) { shoe in
                ShoeItemView(shoe: shoe)
            }
            .fixedSize(horizontal: false, vertical: true)
            
            Spacer()
        }
    }
}

#Preview {
    HomeView()
}
