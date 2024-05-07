//
//  Product.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 12/02/24.
//

import Foundation

struct Product: Identifiable, Codable, Equatable {
    let id: String
    let businessId: String
    let title: String?
    let description: String?
    let price: Int?
    let discountPercentage: Double?
    let rating: Double?
    let stock: Int?
    let category: String?
    let thumbnail: String?
    let images: [String]?
    
 
}

extension Product {
    static var MOCK_PRODUCT: [Product] = [
        
        .init(id: NSUUID().uuidString, businessId: NSUUID().uuidString, title: "tshirt", description: "", price: 500, discountPercentage: 23, rating: 5, stock: 3, category: "fashion", thumbnail: "", images: [""])
    ]
}
