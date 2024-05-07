//
//  DBUser.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 12/03/24.
//

import Foundation
import Firebase
import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine

struct DBUser: Identifiable, Codable, Hashable {
    
    let id: String
    let email: String?
    let photoUrl: String?
    let dateCreated: Date?
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false }
        return currentUid == id
    }
    
    init(user: FirebaseUser) {
        self.id = user.uid
        self.email = user.email
        self.photoUrl = user.photoUrl
        self.dateCreated = Date()
    }
    
    init(userId: String,
         email: String? = nil,
         photoUrl: String? = nil,
         dateCreated: Date? = nil) {
        
        self.id = userId
        self.email = email
        self.photoUrl = photoUrl
        self.dateCreated = dateCreated
    }
    
    static var MOCK_USER: [DBUser] = [
        .init(userId: NSUUID().uuidString)
    ]
    
   static var mock_users = [DBUser(userId: "", email: "", photoUrl: "", dateCreated: Date()),
                      DBUser(userId: "", email: "", photoUrl: "", dateCreated: Date())
    ]
    
    enum CodingKeys: String, CodingKey {
        case id = "user_id"
        case email = "email"
        case photoUrl = "photo_url"
        case businessOwner = "business_owner"
        case dateCreated = "date_created"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.email = try container.decodeIfPresent(String.self, forKey: .email)
        self.photoUrl = try container.decodeIfPresent(String.self, forKey: .photoUrl)
//        self.businessOwner = try container.decodeIfPresent(Bool.self, forKey: .businessOwner)
        self.dateCreated = try container.decodeIfPresent(Date.self, forKey: .dateCreated)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.email, forKey: .email)
        try container.encodeIfPresent(self.photoUrl, forKey: .photoUrl)
//        try container.encodeIfPresent(self.businessOwner, forKey: .businessOwner)
        try container.encodeIfPresent(self.dateCreated, forKey: .dateCreated)
    }
    
}
