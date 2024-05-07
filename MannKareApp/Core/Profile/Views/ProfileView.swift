//
//  ProfileView.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 10/03/24.
//

import SwiftUI

struct ProfileView: View {
//    let user: DBUser
    @StateObject var viewModel = ProfileViewModel()
    @Binding var showSignInView: Bool
    
    var body: some View {
        NavigationStack {
            
            List {
               
                        
                        
                ProfileCellView()
                
                Button("Sign out") {
                    Task{
                        try viewModel.signOut()
                        showSignInView = true
                    }
                }
            }
//            .task {
//                try? await viewModel.loadCurrentUser()
//            }
        }
    }
}

#Preview {
    ProfileView(showSignInView: .constant(false))
}
