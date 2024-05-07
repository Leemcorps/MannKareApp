//
//  HomeCell.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 14/02/24.
//


import SwiftUI
import Kingfisher

struct HomeCell: View {
    let product: Product
    let business: Brand?
    
    @State var isSelected: Bool = false

    var body: some View {
            VStack {
                
                KFImage(URL(string: product.thumbnail ?? ""))
                    .resizable()
                    .scaledToFill()
                    .frame(width: (UIScreen.main.bounds.width / 2) - 13)
                    .frame(height: 300)
                    .clipped()
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding(.horizontal)
                    .contextMenu {
                        Button("Add to Favorites") {
                            
                        }
                    }
                
                
                
                HStack {
                   
                    if let business {
                        if let logoUrl = business.logo {
                            KFImage(URL(string: logoUrl))
                                .resizable()
                                .frame(width: 28, height: 28)
                                .cornerRadius(50)
                            
                        } else {
                            
                            Image(systemName: "tshirt.circle.fill")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .foregroundStyle(Color.gray)
                            
                        }
                    }
                    
                    
                    VStack(alignment: .leading) {
                        
                        Text(product.title ?? "")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.primary)
                        
                     
                        Text("Rs: " + String(product.price ?? 0))
                            .font(.footnote)
                            .foregroundStyle(Color.primary)
                    }
                    
                    Spacer()
                    
                    
                    Button {
                        isSelected.toggle()
                        
                    } label: {
                        Image(systemName: isSelected ? "heart.fill" : "heart")
                            .resizable()
                            .frame(width: 22, height: 20)
                            .foregroundColor(isSelected ? Color.pink : Color.gray.opacity(0.5))
//                            .unredacted()
                    }
                    
                }
                .padding(.horizontal, 5)
                .cornerRadius(20)
                .frame(width: (UIScreen.main.bounds.width / 2) - 13, height: 30)
                .contextMenu {
                    Button("Go to brand profile") {
                        
                    }
                }
                
                
            }
            .padding(.bottom, 10)
  
    }
}

#Preview {
    HomeCell(product: Product.MOCK_PRODUCT[0], business: Brand.Mock_Brand[0])
}
