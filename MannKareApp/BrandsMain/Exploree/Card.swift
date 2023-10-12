//
//  Brands.swift
//  BrandsFile
//
//  Created by Azhar Bahleem on 07/06/23.
//

import SwiftUI

struct Card: View {
var product: BrandsDataList
    var body: some View {
        
        ZStack {
        
            Rectangle()
                .frame(width: UIScreen.main.bounds.width - 10)
                .frame(height: 430)
                .foregroundColor(.gray.opacity(0.1))
                .cornerRadius(20)
            
        ZStack {
            
            VStack {
                HStack {
                    HStack {
                        Image(product.brandLogo)
                            .resizable()
                            .frame(width: 40, height: 40)
                            .cornerRadius(50)
                        
                        
                        
                        
                        Text("\(product.name)")
                            .font(.body)
                        //.foregroundColor(.black)
                            .bold()
                    }
                    .padding(8)
                    
                    
                    Spacer()
                    
                    
                    HStack {
                        Text("\(product.followers) Followers")
                            .font(.footnote)
                        
                        
                        
                        
                        
                        Button(action: {
                            
                        }, label: {
                            
                            ZStack{
                                
                                Rectangle()
                                    .frame(width: 70, height: 35)
                                    .cornerRadius(15)
                                    .foregroundColor(.red)
                                
                                Text("Follow")
                                    .font(.caption)
                                    .foregroundColor(.white)
                                    .bold()
                            }
                            
                        })
                        
                    }.padding(8)
                }
                .frame(width: UIScreen.main.bounds.width - 5)
                
                // Product view starts (HStack)
                
                HStack {
                    Image(product.product1)
                        .resizable()
                        .frame(height: 170)
                        .frame(width: (UIScreen.main.bounds.width / 3) - 10)
                        .scaledToFill()
                        .clipped()
                        .cornerRadius(15)
                    
                    // Spacer()
                    
                    Image(product.product2)
                        .resizable()
                        .frame(height: 170)
                        .frame(width: (UIScreen.main.bounds.width / 3) - 10)
                        .scaledToFill()
                        .clipped()
                        .cornerRadius(15)
                    
                    //Spacer()
                    
                    Image(product.product3)
                        .resizable()
                        .frame(height: 170)
                        .frame(width: (UIScreen.main.bounds.width / 3) - 10)
                        .scaledToFill()
                        .clipped()
                        .cornerRadius(15)
                }.padding(.horizontal, 8)
                
                
                HStack {
                    Image(product.product4)
                        .resizable()
                        .frame(height: 170)
                        .frame(width: (UIScreen.main.bounds.width / 3) - 10)
                        .scaledToFill()
                        .clipped()
                        .cornerRadius(15)
                    
                    // Spacer()
                    
                    Image(product.product5)
                        .resizable()
                        .frame(height: 170)
                        .frame(width: (UIScreen.main.bounds.width / 3) - 10)
                        .scaledToFill()
                        .clipped()
                        .cornerRadius(15)
                    
                    //Spacer()
                    
                    Image(product.product6)
                        .resizable()
                        .frame(height: 170)
                        .frame(width: (UIScreen.main.bounds.width / 3) - 10)
                        .scaledToFill()
                        .clipped()
                        .cornerRadius(15)
                }.padding(.horizontal,6)
                
                
                //Product view ends
            }.padding(.horizontal, 6)
        }
        
    }//Zstack top

                  
 }
 }
            
struct Card_Previews: PreviewProvider {
                static var previews: some View {
                    Card(product: brandlist[0])
                }
            }



                
