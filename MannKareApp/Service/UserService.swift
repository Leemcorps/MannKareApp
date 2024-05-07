//
//  UserService.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 12/02/24.
//

import Foundation
import Firebase
import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine

struct FirebaseUser {

    let uid: String
    let email: String?
    let photoUrl: String?

    init(user: User) {
        self.uid = user.uid
        self.email = user.email
        self.photoUrl = user.photoURL?.absoluteString
        
    }
}



class UserService {
    
    static let shared = UserService()
    private init() { }
    
     let userCollection: CollectionReference = Firestore.firestore().collection("users")
    
     func userDocument(userId: String) -> DocumentReference {
        userCollection.document(userId)
    }
    
    private let encoder: Firestore.Encoder = {
        let encoder = Firestore.Encoder()
        return encoder
    }()
    
    private let decoder: Firestore.Decoder = {
        let decoder = Firestore.Decoder()
        return decoder
    }()
    
    func createNewUser(user: DBUser) async throws {
        try userDocument(userId: user.id).setData(from: user, merge: false)
    }
    
    func getUser(withUid uid: String) async throws -> DBUser {
        let snapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        return try snapshot.data(as: DBUser.self)
    }
    
} // CLASS
