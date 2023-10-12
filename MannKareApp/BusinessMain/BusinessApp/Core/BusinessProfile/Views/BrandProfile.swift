//
//  BrandProfile.swift
//  BusinessApp
//
//  Created by Azhar Bahleem on 24/09/23.
//

import SwiftUI

struct BrandProfile: View {
    var body: some View {
        NavigationStack {
            
            
            // Main VStack
            ScrollView {
            VStack{
                
                BrandBox()
                
                PickerView()
                
                BrandCard(product: ProductSample(brandLogo: "puma", followers: 54, name: "Puma", product1: "pic1", product2: "pic2", product3: "pic3", product4: "pic4", product5: "pic5", product6: "pic6"))
                
            }
            .padding(.top, 50)
            }
            .overlay(Header())
        
            
            
            
            
        }.navigationTitle("Set up your brand")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    BrandProfile()
}
