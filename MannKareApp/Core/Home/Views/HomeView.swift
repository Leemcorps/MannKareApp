//
//  HomeView.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 14/02/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    let business: Brand
    //let user: FirebaseUser
    
    private let gridItem: [GridItem] = [
        .init(.adaptive(minimum: 150, maximum: 300)),
        .init(.adaptive(minimum: 150, maximum: 300))
    ]
    
    private let imageDimensions: CGFloat = (UIScreen.main.bounds.width / 2) - 1
    
    var body: some View {
        NavigationStack {
            
            ScrollView(.vertical, showsIndicators: false) {
                LazyVGrid(columns: gridItem) {
                    ForEach(viewModel.products) { product in
                        
                        
                        HomeCell(product: product, business: business)
                        
                    }
                }
                .padding(.top, 50)
                
                
            }
            
        }
    }
}

#Preview {
    HomeView(business: Brand.Mock_Brand[0])
}
