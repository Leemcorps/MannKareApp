//
//  Product.swift
//  SweaterRecipeApp
//
//  Created by Azhar Bahleem on 01/06/23.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var brand: String
    var name: String
    var image: String
    var price: Int
}


var productList = [Product(brand: "puma", name: "Prodct 1", image: "picb1", price: 1000),
                   Product(brand: "puma", name: "Prodct 2", image: "picb2", price: 1100),
                   Product(brand: "puma", name: "Prodct 3", image: "picb3", price: 1200),
                   Product(brand: "puma", name: "Prodct 4", image: "picb4", price: 1300),
                   Product(brand: "puma", name: "Prodct 5", image: "picb5", price: 1400),
                   Product(brand: "puma", name: "Prodct 6", image: "picb6", price: 1500),
                   Product(brand: "puma", name: "Prodct 7", image: "picb7", price: 1600),
                   Product(brand: "puma", name: "Prodct 8", image: "picb8", price: 1700),
                   Product(brand: "puma", name: "Prodct 9", image: "picb9", price: 1800),
                   Product(brand: "puma", name: "Prodct 10", image: "picb10", price: 2000)]
