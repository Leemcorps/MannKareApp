//
//  User.swift
//  MessengerApp
//
//  Created by Azhar Bahleem on 01/09/23.
//

import Foundation
import FirebaseFirestoreSwift


struct User: Codable, Identifiable, Hashable {
    @DocumentID var uid: String?
    let fullname: String
    let email: String
    var profileImageUrl: String?
    
    var id: String {
    return uid ?? NSUUID().uuidString
    }
    
    var firstName: String {
        let formatter = PersonNameComponentsFormatter()
        let components = formatter.personNameComponents(from: fullname)
        return components?.givenName ?? fullname
    }
    
    
}

extension User {
    static let MOCK_USER = User(fullname: "Azahar Bahleem", email: "Azaharbahleem786@gmail.com", profileImageUrl: "leemcorp")
}
