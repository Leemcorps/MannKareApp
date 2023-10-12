//
//  ProductCardNew.swift
//  Mannkare_beta1
//
//  Created by Azhar Bahleem on 17/09/23.
//

import SwiftUI

struct ProductCard: View {
    @State var isSelected: Bool = false
//    @EnvironmentObject var cartManager: CartManager
//    @EnvironmentObject var likeManager: LikeManager
    var product: ProductData
    
    var body: some View {
        
        VStack {
            
            Image(product.image)
                .resizable()
                //.aspectRatio(contentMode: .fit)
                .cornerRadius(20)
//                .frame(width: 190)
//                .frame(height: 300)
                .frame(width: (UIScreen.main.bounds.width / 2) - 13, height: 300)
                .scaledToFit()
                
                
            
            
            
            
            HStack {
            
              Image(product.brand)
                                            .resizable()
                                            .frame(width: 25, height: 25)
                                            .cornerRadius(50)
                
            
            
                                    VStack(alignment: .leading) {
            
            
                                        Text(product.name)
                                            
                                            .font(.footnote)
                                            .fontWeight(.semibold)
            
                                        Text("Rs \(product.price)")
                                            .font(.footnote)
                                            
            
            
                                    }
            
                                    Spacer()
                                    
                                    
                                    Button {
                                        
                                      //  likeManager.addToLike(product: product)
                                        
                                        isSelected.toggle()
                                        
                                    } label: {
                                        Image(systemName: "heart.fill")
                                            .resizable()
                                            .frame(width: 22, height: 20)
                                            .foregroundColor(isSelected ? Color.red : Color.gray)

                                    }
   
                                }
                                .padding(.horizontal, 5)
                                .cornerRadius(20)
                                .frame(width: (UIScreen.main.bounds.width / 2) - 13, height: 30)
                                    
            
        }
        
        
    }
}
            
            
        
struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: ProductHomeList[1])
//            .environmentObject(CartManager())
//            .environmentObject(LikeManager())
    }
}
