//
//  UploadImageViewModel.swift
//  BusinessApp
//
//  Created by Azhar Bahleem on 24/09/23.
//

import Foundation

import Foundation
import SwiftUI
import PhotosUI


class UploadImageViewModel: ObservableObject {
    @Published var selectedItem: PhotosPickerItem? {
        didSet { Task { try await loadImage() } }
    }
    
    @Published var productimage: Image?
    
    func loadImage() async throws {
        guard let item = selectedItem else { return }
        guard let imageData = try await item.loadTransferable(type: Data.self) else { return }
        guard let uiImage = UIImage(data: imageData) else { return }
        self.productimage = Image(uiImage: uiImage)
    }
    
    
}
