//
//  BrandBox.swift
//  BusinessApp
//
//  Created by Azhar Bahleem on 24/09/23.
//

import SwiftUI

struct BrandBox: View {
    var body: some View {
        ZStack {
            
            Rectangle()
                .frame(width: UIScreen.main.bounds.width - 20, height: 180)
                .cornerRadius(20)
                .foregroundStyle(Color.gray.opacity(0.2))
                
            
            HStack {
                
                VStack(alignment: .leading) {
                    
                    Image(systemName: "tshirt.circle.fill")
                        .resizable()
                        .frame(width: 70, height: 70)
                        .foregroundStyle(Color.blue)
                    
                    Text("Brand name")
                        .font(.footnote)
                    
                    Text("Website")
                        .font(.footnote)
                    
                    
                    Text("Description")
                        .font(.footnote)
                }.padding()
                
                
                Spacer()
                
                VStack {
                    
                    Text("29")
                    
                    Text("Products")
                        .font(.footnote)
                }.padding(.horizontal)
                
                
                VStack {
                    
                    Text("114")
                    
                    Text("Followers")
                        .font(.footnote)
                }.padding(.horizontal)
                
                
                Spacer()
                
            }.padding(.horizontal)
            
            
           
            
            
            
        }
    }
}

#Preview {
    BrandBox()
}
