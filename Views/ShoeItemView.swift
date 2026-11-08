//
//  ShoeItemView.swift
//  ShoeStoreApp
//
//  Created by Rakhat Bakhytgali on 09.11.2026.
//

import SwiftUI

struct ShoeItemView: View {
    let shoe: ShoeModel
    
    var body: some View {
        VStack(spacing: 20) {
            Image(shoe.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 300)
            
            Text(shoe.name)
                .font(.title)
                .bold()
            
            Text(shoe.description)
            
            HStack {
                Spacer()
                
                Text(shoe.category.rawValue)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text("\(shoe.price)$")
                    .font(.title3)
                    .bold()
                
                Spacer()
            }
            
            Spacer()
            Spacer()
            
            Button {
                
            } label: {
                Text("Add To Cart")
                    .bold()
                    .font(.title2)
                    .foregroundStyle(.white)
                    .padding(.vertical, 20)
                    .frame(maxWidth: .infinity)
                    .background(.black)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.horizontal, 20)
            }
            Spacer()
        }
    }
}

#Preview {
    ShoeItemView(shoe: ShoeModel.sampleShoes[0])
}
