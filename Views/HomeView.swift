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
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 15) {
                    ForEach(ShopManager.shoesList) { shoe in
                        ShoeCardComponent(shoeModel: shoe)
                    }
                }
            }
            .fixedSize(horizontal: false, vertical: true)
            
            Spacer()
        }
        .padding(15)
    }
}

#Preview {
    HomeView()
}
