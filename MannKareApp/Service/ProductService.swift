//
//  ProductService.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 12/02/24.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine

//final class

struct ProductService {
    
    static let shared = ProductService()
     init() { }
    
    private static let productCollection = Firestore.firestore().collection("products")
    
    
//
//    private func productDocument(productId: String) -> DocumentReference {
//        productCollection.document(productId)
//    }
//    
//    func uploadProduct(product: Product) async throws {
//        try productDocument(productId: String(product.id)).setData(from: product, merge: false)
//    }
//    
//    func getProduct(productId: String) async throws -> Product {
//        try await productDocument(productId: productId).getDocument(as: Product.self)
//    }
    

    
} // CLASS
