//
//  SizePicker.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 16/02/24.
//

import SwiftUI

struct SizePicker: View {
    @State var sizes: String = ""
    let SizeOption: [String] = ["Large", "Medium", "Small"]
    
    var body: some View {
        
        Picker(
            "Size", selection: $sizes,
            content: {
                ForEach(SizeOption.indices, id: \.self) { index in
                    Text(SizeOption[index]).tag(SizeOption[index])
                }
            })
        .pickerStyle(.menu)
    }
}

#Preview {
    SizePicker()
}
