//
//  PickerView.swift
//  BusinessApp
//
//  Created by Azhar Bahleem on 24/09/23.
//

import SwiftUI

struct PickerView: View {
    @State var selection: String = "Overview"
    let filterOptions: [String] = ["Overview", "Status", "Settings"]
    
    
    var body: some View {
        
        
        
        Picker(
            selection: $selection,
            
            label: Text("picker"),
            
            content: {
                ForEach(filterOptions.indices,  id: \.self) {
                    index in Text(filterOptions[index])
                        .tag(filterOptions[index])
                }
            }
            
            
            
            
        ).pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal)
        
        
        
        
    }
}

#Preview {
    PickerView()
}
