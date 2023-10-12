//
//  ActiveNowViewModel.swift
//  MessengerApp
//
//  Created by Azhar Bahleem on 07/09/23.
//

import Foundation

class ActiveNowViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchUsers() }
    }
    @MainActor
    private func fetchUsers() async throws {
        self.users = try await UserService.fetchAllUsers(limit: 10)
    }
}
