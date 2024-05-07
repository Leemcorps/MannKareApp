//
//  AuthService.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 12/02/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestoreSwift
import Firebase


enum AuthProviderOption: String {
    case email = "password"
    case google = "google.com"
    case apple = "apple.com"
}

class AuthService {
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: DBUser?
    
    
    static let shared = AuthService()
    private init() {}
    
    
    
    func getAuthenticatedUser() throws -> FirebaseUser {
        guard let user = Auth.auth().currentUser else {
            throw URLError(.badServerResponse)
        }
        return FirebaseUser(user: user)
        //return FirebaseUser(uid: user.uid, email: user.email, photoUrl: user.photoURL?.absoluteString)
    }
    
    
    func getProviders() throws -> [AuthProviderOption] {
        guard let providerData = Auth.auth().currentUser?.providerData else {
            throw URLError(.badServerResponse)
        }
         
        var providers: [AuthProviderOption] = []
        for provider in providerData {
            if let option = AuthProviderOption(rawValue: provider.providerID) {
                providers.append(option)
            } else {
                assertionFailure("Provider option not found: \(provider.providerID)")
            }
            
        }
        return providers
    }
    
    
    func signOut() throws {
        try Auth.auth().signOut()
    }
    
    
    func deleteUser() async throws {
        guard let user = Auth.auth().currentUser else { return }
        
         try await user.delete()
    }

} // CLASS


// MARK: SIGN IN WITH ANONYMOUS
extension AuthService {

    @discardableResult
    func signInAnonymous() async throws -> FirebaseUser {
        let result = try await Auth.auth().signInAnonymously()
        self.userSession = result.user
        return FirebaseUser(user: result.user)
        
    }
    
    
} // CLASS




// MARK: SIGN IN WITH EMAIL
extension AuthService {
    
    @MainActor
    func createUser(email: String, password: String, photoUrl: String) async throws -> FirebaseUser {
        
        let result = try await Auth.auth().createUser(withEmail: email, password: password)
        self.userSession = result.user
        return FirebaseUser(user: result.user)
       // return FirebaseUser(uid: result.user.uid, email: email, photoUrl: photoUrl)
        
        
    }
    
    @discardableResult
    func signInUser(email: String, password: String) async throws -> FirebaseUser {
        let result = try await Auth.auth().signIn(withEmail: email, password: password)
        self.userSession = result.user
        return FirebaseUser(user: result.user)
    }
    
    
    func resetPassword(email: String) async throws {
        try await Auth.auth().sendPasswordReset(withEmail: email)
    }
    
    
    
    func updatePassword(password: String) async throws {
        guard let user = Auth.auth().currentUser else {
            throw URLError(.badServerResponse)
        }
        
        try await user.updatePassword(to: password)
    }
    

    func updateEmail(email: String) async throws {
        guard let user = Auth.auth().currentUser else {
            throw URLError(.badServerResponse)
        }
        
        try await user.updateEmail(to: email)
    }
    
} // CLASS


// MARK: SIGN IN SSO
extension AuthService {
    
    @discardableResult
    func signInWithGoogle(tokens: GoogleSignInResultModel) async throws -> FirebaseUser {
        let credential = GoogleAuthProvider.credential(withIDToken: tokens.idToken, accessToken: tokens.accessToken)
        return try await signIn(credential: credential)
    }
    
    @discardableResult
    func signInWithApple(tokens: SignInWithAppleResult) async throws -> FirebaseUser {
        let credential = OAuthProvider.credential(withProviderID: AuthProviderOption.apple.rawValue, idToken: tokens.token, rawNonce: tokens.nonce
        )
        return try await signIn(credential: credential)
    }
    
    func signIn(credential: AuthCredential) async throws -> FirebaseUser {
        let result = try await Auth.auth().signIn(with: credential)
        self.userSession = result.user
        return FirebaseUser(user: result.user)
    }
    
}


