//
//  Bar.swift
//  SweaterRecipeApp
//
//  Created by Azhar Bahleem on 03/06/23.
//

import SwiftUI

struct SearchView: View {
    private var listOfBrands = brandList
    @State var searchText = ""
    var columns = [GridItem(.adaptive(minimum: 100),spacing: 1),
                   GridItem(.adaptive(minimum: 100),spacing: 1)]
    

    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                LazyVGrid(columns: columns, spacing: 15) {
                    ForEach(brands, id: \.self) {brand in
                        
                        ZStack{
                            Rectangle()
                                .frame(width: (UIScreen.main.bounds.width / 2) - 10, height: 90)
                                .foregroundColor(.gray.opacity(0.1))
                                .cornerRadius(20)
                            Text(brand.capitalized)
                                .foregroundColor(.black.opacity(0.6))
                                .font(.headline)
                                .bold()
                        }//Zstack
                        
                    }
                    
                    
                }//vstack
                .searchable(text: $searchText)
               
            }
            
        } //nav view
        
        
    }
    
    var brands: [String] {
        let lcBrands = listOfBrands.map { $0.lowercased() }
        
        return searchText == "" ? lcBrands : lcBrands.filter {
            $0.contains(searchText.lowercased())
        }
    }
}






struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
