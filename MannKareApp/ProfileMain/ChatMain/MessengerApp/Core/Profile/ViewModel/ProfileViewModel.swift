//
//  ProfileViewModel.swift
//  MessengerApp
//
//  Created by Azhar Bahleem on 01/09/23.
//

import Foundation
import SwiftUI
import PhotosUI


class ProfileViewModel: ObservableObject {
    @Published var selectedItem: PhotosPickerItem? {
        didSet { Task { try await loadImage() } }
    }
    
    @Published var profileimage: Image?
    
    func loadImage() async throws {
        guard let item = selectedItem else { return }
        guard let imageData = try await item.loadTransferable(type: Data.self) else { return }
        guard let uiImage = UIImage(data: imageData) else { return }
        self.profileimage = Image(uiImage: uiImage)
    }
    
    
}
