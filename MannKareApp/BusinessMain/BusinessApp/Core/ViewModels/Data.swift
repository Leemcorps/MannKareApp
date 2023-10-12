//
//  Data.swift
//  BrandsFile
//
//  Created by Azhar Bahleem on 07/06/23.
//

import Foundation

struct ProductSample: Identifiable {
    var id = UUID()
    var brandLogo: String
    var followers: Int
    var name: String
    var product1: String
    var product2: String
    var product3: String
    var product4: String
    var product5: String
    var product6: String
   
}


var productBrandList = [
                       ProductSample(brandLogo: "puma", followers: 2000, name: "Puma", product1: "picb1", product2: "picb2", product3: "picb3", product4: "picb4", product5: "picb5", product6: "picb6" ),
                       
                        ProductSample(brandLogo: "puma", followers: 2000, name: "Puma", product1: "picb1", product2: "picb2", product3: "picb3", product4: "picb4", product5: "picb5", product6: "picb6" ),
                       
                       ProductSample(brandLogo: "puma", followers: 2000, name: "Puma", product1: "picb1", product2: "picb2", product3: "picb3", product4: "picb4", product5: "picb5", product6: "picb6" ),
                       
                       ProductSample(brandLogo: "puma", followers: 2000, name: "Puma", product1: "picb1", product2: "picb2", product3: "picb3", product4: "picb4", product5: "picb5", product6: "picb6" ),
                       
                       ProductSample(brandLogo: "puma", followers: 2000, name: "Puma", product1: "picb1", product2: "picb2", product3: "picb3", product4: "picb4", product5: "picb5", product6: "picb6" )
]
