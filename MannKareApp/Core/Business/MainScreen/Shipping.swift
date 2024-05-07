//
//  Shipping.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 16/04/24.
//

import SwiftUI

struct Shipping: View {
    var body: some View {
        
        ZStack {
            Image("shipping")
                .resizable()
                .frame(width: .infinity, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            
            VStack(alignment: .center, spacing: 15) {
                Text("Shipping")
                    .font(.title)
                    .fontWeight(.medium)
                    //.padding()
                    
                
                Text("We pick up and deliver your products.")
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundStyle(.black.opacity(0.7))
                    .padding(.horizontal)
                    
                
                NavigationLink {
                    
                } label: {
                    Text("Learn more")
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .background(Color.white.opacity(0.8))
                        .cornerRadius(20)
                        .padding(12)
                }
                
                
            }
            .frame(width: .infinity, height: 200)
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        .padding(.horizontal)

    }
}

#Preview {
    Shipping()
}
