//
//  ContentViewModel.swift
//  MessengerApp
//
//  Created by Azhar Bahleem on 04/09/23.
//

import Firebase
import Combine


class ContentViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubscribers()
        
    }
    
    private func setupSubscribers() {
        AuthService.shared.$userSession.sink { [weak self] userSessionFromAuthService in
            self?.userSession = userSessionFromAuthService
        }.store(in: &cancellables)

        
    }
}
