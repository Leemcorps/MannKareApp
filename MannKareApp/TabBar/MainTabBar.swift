//
//  MainTabBar.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 12/02/24.
//

import SwiftUI

struct MainTabBar: View {
    @State private var selectedIndex = 0
    @Binding var showSignInView: Bool
//    let user: DBUser
    
    var body: some View {
        TabView() {
            
           // HomeView(user: user)
            Text("Home")
                .onAppear {
                    selectedIndex = 0
                }
            
                .tabItem {
                    Text("Home")
                    Image(systemName: "homekit")
                    
                }.tag(0) 
            
           // SearchView(user: user)
            Text("Home")
                .onAppear {
                    selectedIndex = 1
                }
            
                .tabItem {
                    Text("Search")
                    Image(systemName: "magnifyingglass")
                }.tag(1)
            
            
            //ExploreView(user: user)
//            Text("Home")
            BrandProfile()
                .onAppear {
                    selectedIndex = 2
                }
                .tabItem {
                    Text("Explore")
                    Image(systemName: "rainbow")
                }
                .tag(2)
            
            // BrandProfile(user: user)
            MainViewBusiness()
            //            Text("bizzzz")
                .onAppear {
                    selectedIndex = 3
                }
            
                .tabItem {
                    Text("My store")
                    Image(systemName: "building.columns.fill")
                   // Image(systemName: "creditcard")
                    
                    
                }
                .tag(3)
            
            ProfileView(showSignInView: $showSignInView)
                .onAppear {
                    selectedIndex = 4
                }
                .tabItem {
                    Text("Profile")
                    Image(systemName: "person.and.background.dotted")
                }
                .tag(4)
            

            
        }.tint(.blue)
    }
}

#Preview {
    MainTabBar(showSignInView: .constant(false))
}
