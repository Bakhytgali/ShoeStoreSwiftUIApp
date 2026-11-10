//
//  ShopManager.swift
//  ShoeStoreApp
//
//  Created by Rakhat Bakhytgali on 07.11.2026.
//

import Foundation
import Combine
import SwiftUI

enum AddToCartStatus {
    case success
    case alreadyInCart
}

class ShopManager: ObservableObject {
    static var shoesList: [ShoeModel] = ShoeModel.sampleShoes
    
    @Published var userCart: [ShoeModel] = []
    
    
    func shoeAlreadyInCart(shoe: ShoeModel) -> Bool {
        return userCart.contains(shoe)
    }
    
    func toggleCart(shoe: ShoeModel) {
        if(shoeAlreadyInCart(shoe: shoe)) {
            userCart.remove(at: userCart.firstIndex(of: shoe)!)
        } else {
            userCart.append(shoe)
        }
    }
}
