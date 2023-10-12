//
//  Header.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 11/10/23.
//

import SwiftUI

struct Header: View {
    var body: some View {
        
        (
            
            
            ZStack {
                
                Color.clear.background(.ultraThinMaterial)
                
                
                      HStack {
                
                
                          Image("og")
                              .resizable()
                              .frame(width: 120, height: 60)
                              .padding(.horizontal)
                
                
                
                
            
                    Spacer()
                    
//                          NavigationLink {
//                              
//                              CartView()
//                                  .environmentObject(cartManager)
//                              
//                          } label: {
//                              CartButton(numberOfProducts: cartManager.products.count)
//                               // .padding()
//                                  .foregroundColor(.black)
//                          }
                            
                        
//                          NavigationLink {
//                              
//                              LikesView()
//                                  .environmentObject(likeManager)
//                              
//                          } label: {
//                              LikeButton(numberOfProducts: likeManager.products.count)
//                                  .padding(.horizontal)
//                                  .foregroundColor(.pink)
//                          }
       
                }.padding(.vertical, 1)
                
                    
                
            }//.frame(height: 70)
            .frame(maxWidth: .infinity)
            .frame(height: 25)
            .frame(maxHeight: .infinity, alignment: .top)
            
            
        )
        
    }
}

#Preview {
    Header()
}
