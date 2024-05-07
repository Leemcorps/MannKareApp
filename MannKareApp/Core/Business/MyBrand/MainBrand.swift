//
//  MainBrand.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 13/04/24.
//

import SwiftUI

struct MainBrand: View {
    let user: DBUser
    
    var body: some View {
        ScrollView {
            
            EditBrandView(user: user)
            
            BrandTabBar()
 
        }
    }
}

#Preview {
    MainBrand(user: DBUser(userId: ""))
}
