//
//  ContentView.swift
//  BrandsFile
//
//  Created by Azhar Bahleem on 07/06/23.
//

import SwiftUI

struct ExploreBrandsView: View {
    var body: some View {

        ScrollView {
  
                ForEach(brandlist, id: \.id) {product in
                        Card(product: product)
                }
                .padding(.top, 50)
    
            
        }//scrollview
        .overlay(Header())

    }
}

struct ExploreBrandsView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreBrandsView()
    }
}
