//
//  ShoeModel.swift
//  ShoeStoreApp
//
//  Created by Rakhat Bakhytgali on 02.11.2026.
//

import Foundation

struct ShoeModel: Identifiable {
    let id = UUID()
    let name: String
    let price: Int
    let description: String
    let category: Category
    let imageName: String
    
    static let sampleShoes = [
        ShoeModel(
            name: "Air Max Plus Seven",
            price: 150,
            description: "Those are real cool looking shoes.",
            category: .summer,
            imageName: "air_max_plus_seven"
        ),
        ShoeModel(
            name: "Air Max Plus Seven",
            price: 150,
            description: "Those are real cool looking shoes.",
            category: .summer,
            imageName: "air_max_plus_seven"
        ),
        ShoeModel(
            name: "Air Max Plus Seven",
            price: 150,
            description: "Those are real cool looking shoes.",
            category: .summer,
            imageName: "air_max_plus_seven"
        ),
        ShoeModel(
            name: "Air Max Plus Seven",
            price: 150,
            description: "Those are real cool looking shoes.",
            category: .summer,
            imageName: "air_max_plus_seven"
        ),
        ShoeModel(
            name: "Air Max Plus Seven",
            price: 150,
            description: "Those are real cool looking shoes.",
            category: .summer,
            imageName: "air_max_plus_seven"
        ),
        ShoeModel(
            name: "Air Max Plus Seven",
            price: 150,
            description: "Those are real cool looking shoes.",
            category: .summer,
            imageName: "air_max_plus_seven"
        ),
        ShoeModel(
            name: "Air Max Plus Seven",
            price: 150,
            description: "Those are real cool looking shoes.",
            category: .summer,
            imageName: "air_max_plus_seven"
        ),
    ]
}
