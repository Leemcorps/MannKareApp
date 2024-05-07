//
//  BrandProfileViewModel.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 20/03/24.
//

import Foundation
import Firebase

@MainActor
class brandProfileViewModel: ObservableObject {
    
    @Published  var brand: Brand? = nil
    
    
    
    func fetchBrand() async throws {
        
        try await BrandService.fetchUserBrand()
        
    }
    
}
