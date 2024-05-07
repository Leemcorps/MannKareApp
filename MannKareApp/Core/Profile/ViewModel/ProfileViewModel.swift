//
//  ProfileViewModel.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 10/03/24.
//

import Foundation


@MainActor
class ProfileViewModel: ObservableObject {
    
    @Published private(set) var user: DBUser? = nil
    
    func loadCurrentUser() async throws {
        let result = try AuthService.shared.getAuthenticatedUser()
        self.user = try await UserService.shared.getUser(withUid: result.uid)
    }
    
    func signOut()  throws {
        try  AuthService.shared.signOut()
    }
    
}
