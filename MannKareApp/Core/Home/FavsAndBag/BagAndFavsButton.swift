//
//  BagAndFavsButton.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 16/02/24.
//

import SwiftUI

struct BagAndFavsButton: View {
    @State var buttonPressed: Bool = false
    
    var body: some View {
        Button(action: {
                buttonPressed.toggle()
        }, label: {
            Image(systemName: "heart")
                .foregroundStyle(.primary)
                .font(.title3)
        })
        .navigationDestination(isPresented: $buttonPressed) {
           // BagsAndFavsView()
        }
        
    }
}

#Preview {
    BagAndFavsButton()
}
