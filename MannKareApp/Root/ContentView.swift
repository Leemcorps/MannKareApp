//
//  ContentView.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 12/02/24.
//

import SwiftUI

struct ContentView: View {

    @State private var showSignInView: Bool = false
    
   
    
    var body: some View {
        ZStack {
            if !showSignInView  {
                
                MainTabBar(showSignInView: $showSignInView)
                
            }
        }
        .onAppear() {
            let authuser = try? AuthService.shared.getAuthenticatedUser()
            self.showSignInView = authuser == nil
        }
        .fullScreenCover(isPresented: $showSignInView) {
            NavigationStack {
                WelcomeView(showSignInView: $showSignInView)
            }
        }
    }
}

#Preview {
    ContentView()
}
