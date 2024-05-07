//
//  StoreTabView.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 06/04/24.
//

import SwiftUI

struct SetUpYourStore: View {
    
    var body: some View {
        
       
        ZStack {
            Image("getstarted")
                .resizable()
                .frame(width: .infinity, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            
            VStack(alignment: .center, spacing: 15) {
                Text("Set up your store")
                    .font(.title)
                    .fontWeight(.medium)
                    //.padding()
                    
                
                Text("List and start selling your products across the globe right away")
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundStyle(.black.opacity(0.7))
                    .padding(.horizontal)
                    
                
                NavigationLink {
                    SetUpBusinessView()
                } label: {
                    Text("Get Started")
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .background(Color.red.opacity(0.8))
                        .cornerRadius(20)
                        .padding(12)
                }
                
                
            }
            .frame(width: .infinity, height: 200)
            .background(.ultraThinMaterial.opacity(1))
            .clipShape(RoundedRectangle(cornerRadius: 20))
            
            
        }.padding(.horizontal)
    
    }
}

#Preview {
    SetUpYourStore()
}
