//
//  LoginViewModel.swift
//  MessengerApp
//
//  Created by Azhar Bahleem on 04/09/23.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
    
}
