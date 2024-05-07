//
//  BrandProfile.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 20/03/24.
//

import SwiftUI

struct BrandProfile: View {
    @StateObject var viewModel = brandProfileViewModel()
    
    
    
    var body: some View {
        ScrollView {
            VStack {
                if let brand = viewModel.brand {
                    if let brandName = brand.name {
                        Text(brandName)
                    }
                    
                    if let brandDescription = brand.description {
                        Text(brandDescription)
                    }
                }
                
                
                
            }
        }
        
        .onAppear {
            Task {
                
                try await viewModel.fetchBrand()
            }
        }
    }
    
}

#Preview {
    BrandProfile()
}
