//
//  HeaderHome.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 16/02/24.
//

import SwiftUI

struct HeaderHome: View {
    var body: some View {
        
        
        
        
        ZStack {
            
            Color.clear.background(.ultraThinMaterial)
            
            
            HStack {
                
                
                Image("og2")
                    .resizable()
                    .frame(width: 100, height: 15)
                    .padding()
                
                
                
                
                
                Spacer()
                
//                BagAndFavsButton()
//                    .padding(.horizontal)
                
            }.padding(.vertical, 1)
            
            
            
        }//.frame(height: 70)
        .frame(maxWidth: .infinity)
        .frame(height: 25)
        .frame(maxHeight: .infinity, alignment: .top)
        
        
        
        
    }
}

#Preview {
    HeaderHome()
}
