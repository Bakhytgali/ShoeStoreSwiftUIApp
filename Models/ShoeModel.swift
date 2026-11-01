//
//  ShoeModel.swift
//  ShoeStoreApp
//
//  Created by Rakhat Bakhytgali on 02.11.2026.
//

import Foundation
import SwiftUI

struct ShoeModel {
    let shoeName: String
    let shoePrice: String
    let shoeDescription: String
    let shoeCategory: String
    let shoeImage: Image
    
    init(shoeName: String, shoePrice: String, shoeDescription: String, shoeCategory: String, shoeImage: Image) {
        self.shoeName = shoeName
        self.shoePrice = shoePrice
        self.shoeDescription = shoeDescription
        self.shoeCategory = shoeCategory
        self.shoeImage = shoeImage
    }
}
