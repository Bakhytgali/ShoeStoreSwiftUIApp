//
//  CartShoeCardComponent.swift
//  ShoeStoreApp
//
//  Created by Rakhat Bakhytgali on 11.11.2026.
//

import SwiftUI

struct CartShoeCardComponent: View {
    let shoe: ShoeModel
    let onCardButtonPress: () -> Void
    let isShoeAdded: Bool
    
    var buttonIconName: String {
        isShoeAdded ? "cart.badge.minus" : "cart"
    }
    
    var body: some View {
        HStack(alignment: .center) {
            HStack {
                Image(shoe.imageName)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .frame(width: 80)
                
                VStack(alignment: .leading) {
                    Text(shoe.name)
                        .font(.headline)
                        .bold()
                    
                    Text("\(shoe.price)$")
                        .foregroundStyle(.gray)
                }
                
                Spacer()
            }
            .padding(10)
            .background(.cardBackground)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            
            Button(action: onCardButtonPress,
                   label: {
                Image(systemName: buttonIconName)
                    .padding(10)
                    .foregroundStyle(.white)
                    .background(.black)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })
        }
        .padding(15)
    }
}

#Preview {
    CartShoeCardComponent(
        shoe: ShoeModel.sampleShoes[0],
        onCardButtonPress: {
            print("pressed")
        },
        isShoeAdded: true
    )
}
