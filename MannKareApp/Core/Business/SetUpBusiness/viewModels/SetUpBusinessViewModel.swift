//
//  SetUpBusinessViewModel.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 14/03/24.
//

import Foundation
import Firebase

class SetUpBusinessViewModel: ObservableObject {
    @Published var brandName: String = ""
    @Published var brandLogo: String = ""
    @Published var brandDescription: String = ""
    @Published var website: String = ""
    
    

    
    @Published var isLoading: Bool = false
    
    func SetUpBusiness() async throws {
        isLoading = true
        
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        
        
        let brandCollection = Firestore.firestore().collection("brands").document()
        
        let brand = Brand(id: brandCollection.documentID, ownerId: uid, name: brandName, logo: brandLogo, description: brandDescription, isVerified: false)
        
        guard let encodedBrand = try? Firestore.Encoder().encode(brand) else { return }
        
        //let brandRef = brandCollection.collection("brand_details")
        
//        let data: [String : Any] = [
//            Brand.CodingKeys.id.rawValue : brandCollection.documentID,
//            Brand.CodingKeys.ownerId.rawValue : uid,
//            Brand.CodingKeys.name.rawValue : name,
//            Brand.CodingKeys.logo.rawValue : logo,
//            Brand.CodingKeys.description.rawValue : description,
//            Brand.CodingKeys.isVerified.rawValue : false
//        ]
        
        try await brandCollection.setData(encodedBrand)
        
        isLoading = false
    }
    
}
