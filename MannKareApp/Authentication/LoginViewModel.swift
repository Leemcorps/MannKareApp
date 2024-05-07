//
//  LoginViewModel.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 13/02/24.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var photoUrl = ""
    
    func signUp() async throws {
        guard !email.isEmpty, !password.isEmpty else {
            print("No email or password found.")
            return
        }
        
        let result = try await AuthService.shared.createUser(email: email, password: password, photoUrl: photoUrl)
        let user = DBUser(user: result)
        
        try await UserService.shared.createNewUser(user: user)
        
    }
    
    func signIn() async throws {
        guard !email.isEmpty, !password.isEmpty else {
            print("No email or password found.")
            return
        }
        try await AuthService.shared.signInUser(email: email, password: password)
        
    }
    
    
    
    
    func signInWithGoogle() async throws {
        let helper = SignInGoogleHelper()
        let tokens = try await helper.signIn()
        let result = try await AuthService.shared.signInWithGoogle(tokens: tokens)
        let user = DBUser(user: result)
        
        try await UserService.shared.createNewUser(user: user)
        
    }
    
    func signInApple() async throws {
        let helper = await SignInAppleHelper()
        let tokens = try await helper.startSignInWithAppleFlow()
        let result = try await AuthService.shared.signInWithApple(tokens: tokens)
        let user = DBUser(user: result)
        
        try await UserService.shared.createNewUser(user: user)
    }
    
}
