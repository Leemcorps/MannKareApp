//
//  MainViewBusiness.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 16/04/24.
//

import SwiftUI

struct MainViewBusiness: View {
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                
                SetUpYourStore()
                
                HowItWorks()

                Shipping()
                
                Packaging()
            }
        }
    }
}

#Preview {
    MainViewBusiness()
}
