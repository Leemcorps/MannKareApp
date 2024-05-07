//
//  WelcomeViewModel.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 13/02/24.
//

import Foundation

class WelcomeViewModel: ObservableObject {
    
    func welcomeSignIn() async throws {
        let result = try await AuthService.shared.signInAnonymous()
        
        let user = DBUser(user: result)
        
        try await UserService.shared.createNewUser(user: user)
        
    }
    
}
