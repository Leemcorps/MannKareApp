//
//  ProductData.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 12/10/23.
//

import Foundation

struct ProductData: Identifiable {
    var id = UUID()
    var brand: String
    var name: String
    var image: String
    var price: Int
}


var ProductHomeList = [
                   ProductData(brand: "puma", name: "Prodct 1", image: "picb1", price: 1000),
                   ProductData(brand: "puma", name: "Prodct 2", image: "picb2", price: 1100),
                   ProductData(brand: "puma", name: "Prodct 3", image: "picb3", price: 1200),
                   ProductData(brand: "puma", name: "Prodct 4", image: "picb4", price: 1300),
                   ProductData(brand: "puma", name: "Prodct 5", image: "picb5", price: 1400),
                   ProductData(brand: "puma", name: "Prodct 6", image: "picb6", price: 1500),
                   ProductData(brand: "puma", name: "Prodct 7", image: "picb7", price: 1600),
                   ProductData(brand: "puma", name: "Prodct 8", image: "picb8", price: 1700),
                   ProductData(brand: "puma", name: "Prodct 9", image: "picb9", price: 1800),
                   ProductData(brand: "puma", name: "Prodct 10", image: "picb10", price: 2000),
                   ProductData(brand: "puma", name: "Prodct 10", image: "picb11", price: 2000)
                  ]


