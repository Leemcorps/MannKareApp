//
//  Packaging.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 18/04/24.
//

import SwiftUI

struct Packaging: View {
    var body: some View {
        
    
            ZStack {
                
                Image("packaging")
                    .resizable()
                    .frame(width: .infinity, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                VStack(alignment: .center, spacing: 15) {
                    Text("Packaging")
                        .font(.title)
                        .fontWeight(.medium)
                        //.padding()
                        
                    
                    Text("Learn how to pack your products.")
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
                //
            }
            .padding(.horizontal)
        

        
    }
}

#Preview {
    Packaging()
}
