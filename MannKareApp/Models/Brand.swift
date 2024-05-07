//
//  Business.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 12/02/24.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine




struct Brand: Identifiable, Codable{
    let id: String
    var ownerId: String
    let name: String?
    let logo: String?
    let description: String?
    let isVerified: Bool
    //let products: Product
    

//    enum CodingKeys: String, CodingKey {
//        case id = "id"
//        case ownerId = "owner_id"
//        case name = "name"
//        case logo = "logo"
//        case description = "description"
//        case isVerified = "is_verified"
//    }
//    
//    init(from decoder: any Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.id = try container.decode(String.self, forKey: .id)
//        self.ownerId = try container.decode(String.self, forKey: .ownerId)
//        self.name = try container.decodeIfPresent(String.self, forKey: .name)
//        self.logo = try container.decodeIfPresent(String.self, forKey: .logo)
//        self.description = try container.decodeIfPresent(String.self, forKey: .description)
//        self.isVerified = try container.decode(Bool.self, forKey: .isVerified)
//    }
//    
//    func encode(to encoder: any Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        
//        try container.encode(self.id, forKey: .id)
//        try container.encode(self.ownerId, forKey: .ownerId)
//        try container.encode(self.name, forKey: .name)
//        try container.encode(self.logo, forKey: .logo)
//        try container.encode(self.description, forKey: .description)
//        try container.encode(self.isVerified, forKey: .isVerified)
//    }
    
    
}

extension Brand {
    static var Mock_Brand: [Brand] = [
        
//        .init(id: NSUUID().uuidString, ownerId: NSUUID().uuidString, name: "mannkare", logo: "", description: "", isVerified: true)
        
    ]
}
