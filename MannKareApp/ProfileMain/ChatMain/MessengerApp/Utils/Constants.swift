//
//  Constants.swift
//  MessengerApp
//
//  Created by Azhar Bahleem on 06/09/23.
//

import Foundation
import Firebase

struct FirestoreConstants {
    static let userCollection = Firestore.firestore().collection("users")
    static let MessagesCollection = Firestore.firestore().collection("messages")
//    static let recentMessages = Firestore.firestore().collection("recent-messages")
  }
