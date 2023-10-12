//
//  SettingsOptionsViewModel.swift
//  MessengerApp
//
//  Created by Azhar Bahleem on 01/09/23.
//

import Foundation
import SwiftUI
enum SettingsOptionsViewModel: Int, CaseIterable, Identifiable {
    
    
    case darkmode
    case activeStatus
    case accessibility
    case privacy
    case notifications
    
    
    var title: String {
        switch self {
        case .darkmode: return "Dark mode"
        case .activeStatus: return "Active status"
        case .accessibility: return "Accessibility"
        case .privacy: return "Privacy and Safety"
        case .notifications: return "Notifications"   
        }
    }
    
    var imageName: String {
        switch self {
            
        case .darkmode:
            return "moon.circle.fill"
        case .activeStatus:
            return "message.badge.circle.fill"
        case .accessibility:
            return "person.circle.fill"
        case .privacy:
            return "lock.circle.fill"
        case .notifications:
            return "bell.circle.fill"
        }
    }
    
    
    var imageBackgroundColor: Color {
        switch self {
            
        case .darkmode:
            return Color.black
        case .activeStatus:
            return Color(.systemGreen)
        case .accessibility:
            return Color.gray
        case .privacy:
            return Color(.systemBlue)
        case .notifications:
            return Color(.systemRed)
        }
    }
   
    var id: Int{ return self.rawValue }
    
}
