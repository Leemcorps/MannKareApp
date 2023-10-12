//
//  RegisterationViewModel.swift
//  MessengerApp
//
//  Created by Azhar Bahleem on 04/09/23.
//

import SwiftUI

class RegisterationViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var fullname = ""
    
    func createUser() async throws {
        try await AuthService.shared.createUser(withEmail: email, password: password, fullname: fullname)
    }
    
}
