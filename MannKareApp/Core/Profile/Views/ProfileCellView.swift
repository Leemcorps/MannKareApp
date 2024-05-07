//
//  ProfileCellView.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 08/03/24.
//

import SwiftUI

struct ProfileCellView: View {
    @StateObject var viewModel = ProfileViewModel()
    var body: some View {
        
        
        
        VStack(alignment: .leading, spacing: 20) {
            if let user = viewModel.user {
                Text("Email: \(user.email ?? "No email found")")
                    .font(.headline)
                    .foregroundStyle(Color.blue)
                
                Text("UserId: \(user.id)")
                    .font(.headline)
                    .foregroundStyle(Color.blue)
            }
        }.onAppear {
            Task {
                try? await viewModel.loadCurrentUser()
            }
        }
    }
}

#Preview {
    ProfileCellView(/*user: DBUser.MOCK_USER[0]*/)
}
