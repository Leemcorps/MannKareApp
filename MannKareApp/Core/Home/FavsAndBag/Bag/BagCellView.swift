//
//  BagCellView.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 16/02/24.
//

import SwiftUI

struct BagCellView: View {
    @State var quantity: Int = 1
    
    var body: some View {
        HStack(spacing: 20) {
            Image("pic4")
                .resizable()
                .scaledToFill()
                .frame(width: 120, height: 170)
                .clipped()
                .clipShape(RoundedRectangle(cornerRadius: 13))
            
            VStack(alignment: .leading) {
                
                
                Text("Jump Suit set")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.primary)
                
                Text("Rs: 3000")
                    .font(.callout)
                    .foregroundStyle(Color.primary)
                
                
                
                // size and
                SizePicker()
                
                //color
                ColorPicker()
                
                //QuantityStepper()
                Stepper("\(quantity)", value: $quantity, in: 1...20)
                
            }
            
        }
        .contextMenu{
            Button("Move to favorites") {
                
            }
            
            Button("Delete") {
                
            }
        }
    }
}

#Preview {
    BagCellView()
}
