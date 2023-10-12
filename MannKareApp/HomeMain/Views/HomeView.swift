//
//  HomeView.swift
//  SweaterRecipeApp
//
//  Created by Azhar Bahleem on 06/06/23.
//

import SwiftUI

struct HomeView: View {
//    @StateObject var cartManager = CartManager()
//    @StateObject var likeManager = LikeManager()
    var columns = [GridItem(.adaptive(minimum: 160),spacing: -10)]
    var body: some View {

        
        NavigationView {
            ScrollView {
                
              LazyVGrid(columns: columns, spacing: 15){
                    
                 
                
                    ForEach(ProductHomeList, id: \.id) {
                        product in
                        NavigationLink(destination: ProductView(product: product)) {
                            
                            ProductCard(product: product)
//                                .environmentObject(cartManager)
//                                .environmentObject(likeManager)
                            
                        }
                        
                        
                    }
                    
              }.padding(.top, 50)
                
       
                
                
            }//scrollview
            .overlay(Header())
            
        }//nav view
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
