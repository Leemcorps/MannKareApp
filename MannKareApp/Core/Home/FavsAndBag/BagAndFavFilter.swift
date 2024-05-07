//
//  BagAndFavFilter.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 16/02/24.
//

import Foundation

enum BagAndFavFilter: Int, CaseIterable, Identifiable {
    
    var id: Int { return self.rawValue }
    
    case favorites
    case bag
    
    
    var title: String {
        switch self {
        case .favorites: return "Favorites"
        case .bag: return "Bag"
        }
    }
}
