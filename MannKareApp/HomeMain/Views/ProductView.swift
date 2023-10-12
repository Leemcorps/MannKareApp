//
//  ProductView.swift
//  SweaterRecipeApp
//
//  Created by Azhar Bahleem on 03/06/23.
//

import SwiftUI

struct ProductView: View {
//    @EnvironmentObject var cartManager: CartManager
//    @EnvironmentObject var likeManager: LikeManager
//    

    var product: ProductData
    var body: some View {
        
          
        
        ScrollView{
            
            
            VStack {
                Image(product.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                // .frame(width: 190)
                
                
                
                HStack {
                    
                    Image(product.brand)
                        .resizable()
                        .frame(width: 40, height: 40)
                        .cornerRadius(50)
                    
                    
                    
                    VStack(alignment: .leading) {
                        
                        
                        Text(product.name)
                            .bold()
                        
                        Text("Rs \(product.price)")
                            .font(.caption)
                        
                        
                    }
                    
                    Spacer()
                    
                    
//                    Button {
//
//                        likeManager.addToLike(product: product)
//
//                    } label: {
//                        Image(systemName: "heart.fill")
//
//
//                            .padding(10)
//                            .foregroundColor(.white)
//                            .background(Color.accentColor)
//                            .cornerRadius(50)
//                        // .padding()
//                    }
//
                    
//                    Button {
//
//                        cartManager.addToCart(product: product)
//
//                    } label: {
//                        Image(systemName: "bag.fill")
//
//
//
//                            .padding(10)
//                            .foregroundColor(.white)
//                            .background(Color.accentColor)
//                            .cornerRadius(50)
//                        //.padding()
//                    }
//
                    
                    
                }.padding()
                    .background(.ultraThinMaterial)
                    .cornerRadius(20)
                
                
                
                
            }// V stack
            
            
            
            
            
            
            
            
        }.ignoresSafeArea(.container, edges: .top)
        
        

    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(product: ProductHomeList[1])
//            .environmentObject(CartManager())
//            .environmentObject(LikeManager())
    }
}
