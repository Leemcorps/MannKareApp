//
//  MyBrandView.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 29/02/24.
//

import SwiftUI

struct BrandTabBar: View {
    var body: some View {

            ZStack {
                Rectangle()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .foregroundStyle(.gray.opacity(0.1))
                    .frame(width: UIScreen.main.bounds.width, height: 50)
                    .shadow(radius: 100)
                    .padding()

                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack(spacing: 20) {

                        Button("Products") {
                            
                        }
                        
                        Spacer()
                        
                        Divider()
                        
                        Spacer()
                        
                        Button("Orders") {
                            
                        }
                        Spacer()
                        
                        Divider()
                        
                        Spacer()
                        
                        Button("Returns") {
                            
                        }
                        
                        Spacer()
                        
                        Divider()
                        
                        Spacer()
                        
                        Button("Analytics") {
                            
                        }
                    }
                    .padding(.horizontal, 30)
                    .frame(height: 20)
                    
                }
                
            }
            
            .frame(width: UIScreen.main.bounds.width, height: 50)

    }
}

#Preview {
    BrandTabBar()
}
