//
//  BrandService.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 18/03/24.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine


class BrandService {
    static let shared = BrandService()
    
    private init() { }
    
    private static let brandCollection = Firestore.firestore().collection("brands")
    
    
    static func brandDocument(brandId: String) -> DocumentReference {
        brandCollection.document(brandId)
    }
    
    static func uploadBrand(brand: Brand) async throws {
        try brandDocument(brandId: String(brand.id)).setData(from: brand, merge: false)
    }
    
    
    private let encoder: Firestore.Encoder = {
        let encoder = Firestore.Encoder()
        return encoder
    }()
    
    private let decoder: Firestore.Decoder = {
        let decoder = Firestore.Decoder()
        return decoder
    }()
    
     static func fetchUserBrand() async throws {
         let result = try  AuthService.shared.getAuthenticatedUser()
        try await brandCollection.whereField("ownerId", isEqualTo: result).getDocuments()
        
    }
    
}
