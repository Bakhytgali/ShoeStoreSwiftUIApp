//
//  HomeView.swift
//  ShoeStoreApp
//
//  Created by Rakhat Bakhytgali on 02.11.2026.
//

import SwiftUI

struct HomeView: View {
    let airMaxPlusSeven: ShoeModel = ShoeModel(shoeName: "Air Max Plus VII", shoePrice: "400", shoeDescription: "Those are real cool looking shoes, you should buy it fr fr", shoeCategory: "Cool looking", shoeImage: Image("air_max_plus_seven"))
    var body: some View {
        VStack {
            VStack {
                airMaxPlusSeven.shoeImage
                
                Text(airMaxPlusSeven.shoeName)
                    .font(.title2)
                    .bold()
                
                HStack {
                    Text("\(airMaxPlusSeven.shoePrice)$")
                        .bold()
                    
                    Text(airMaxPlusSeven.shoeCategory)
                        .foregroundStyle(Color.gray)
                }
            }
        }
        .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    HomeView()
}
