//
//  TabViewMain.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 11/10/23.
//

import SwiftUI

struct TabViewMain: View {
    var body: some View {
        
        TabView {
            HomeView()
            
                .tabItem {
                 
                    Image(systemName: "house.fill")
                    Text("Home")
    
                }
          SearchView()
            
                .tabItem {
                 
                    Image(systemName: "magnifyingglass")
                    
                    Text("Search")
    
                }
            
            
            ExploreBrandsView()
            
                .tabItem {
                    Image(systemName: "menucard.fill")
                    Text("Brands")
    
                }
            
           BrandProfile()
            //Text("Business")
                .tabItem {
                    Image(systemName: "dollarsign.arrow.circlepath")
                    Text("Business")
                }
            
            
           InboxView()
            
                .tabItem {
                    Image(systemName: "paperplane.fill")
                   
                    Text("Chats")
                }
            
            
        }
        
    }
}

#Preview {
    TabViewMain()
}
