//
//  HomeViewModel.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 14/02/24.
//

import Foundation

final class HomeViewModel: ObservableObject {
    
    @Published private(set) var user: DBUser? = nil
    @Published var products = [Product]()
   // @Published var business = Busines
}
