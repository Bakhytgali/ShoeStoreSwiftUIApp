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
                    .padding(20)
                
                Text(shoeModel.name)
                    .font(.title2)
                    .bold()
                    .lineLimit(1)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("\(shoeModel.price)$")
                            .bold()
                        
                        Text(shoeModel.category.rawValue)
                            .foregroundStyle(.gray)
                    }
                    .padding(.leading, 15)
                    .padding(.bottom, 15)
                    
                    Spacer()
                    
                    Button { } label: {
                        Image(systemName: "cart")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25)
                            .padding(15)
                            .foregroundStyle(.white)
                            .background(.black)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                }
            }
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
