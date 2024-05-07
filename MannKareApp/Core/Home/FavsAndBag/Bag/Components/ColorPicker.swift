//
//  ColorPicker.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 16/02/24.
//

import SwiftUI

struct ColorPicker: View {
    @State var colors: String = ""
    let ColorOption: [String] = ["Red", "Green", "Blue"]
    
    var body: some View {
        
        Picker(
            "Color", selection: $colors,
            content: {
                ForEach(ColorOption.indices, id: \.self) { index in
                    Text(ColorOption[index]).tag(ColorOption[index])
                }
            })
        .pickerStyle(.menu)
        
    }
}

#Preview {
    ColorPicker()
}
