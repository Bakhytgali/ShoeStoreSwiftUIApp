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
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(Color.red)
            
            VStack {
                Image(shoeModel.imageName)
                
                Text(shoeModel.name)
                    .font(.title2)
                    .bold()
                
                HStack {
                    Text("\(shoeModel.price)$")
                        .bold()
                    
                    Text(shoeModel.category.rawValue)
                        .foregroundStyle(Color.gray)
                }
            }
            .padding(20)
        }
        .frame(width: 450, height: 250)
    }
}

#Preview {
    ShoeCardComponent(
        shoeModel: ShoeModel.sampleShoes[0]
    )
}
