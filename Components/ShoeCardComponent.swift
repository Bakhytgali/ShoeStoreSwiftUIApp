//
//  ShoeCardComponent.swift
//  ShoeStoreApp
//
//  Created by Rakhat Bakhytgali on 07.11.2026.
//

import SwiftUI

struct ShoeCardComponent: View {
    let shoeModel: ShoeModel
    
    var body: some View {
        VStack {
            Image(shoeModel.imageName)
                .resizable()
                .scaledToFit()
            
            Text(shoeModel.name)
                .font(.title2)
                .bold()
                .lineLimit(1)
            
            HStack {
                Text("\(shoeModel.price)$")
                    .bold()
                
                Text(shoeModel.category.rawValue)
                    .foregroundStyle(.gray)
            }
        }
        .padding(20)
        .frame(width: 250, height: 300)
        .background(.cardBackground)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    ShoeCardComponent(
        shoeModel: ShoeModel.sampleShoes[0]
    )
}
