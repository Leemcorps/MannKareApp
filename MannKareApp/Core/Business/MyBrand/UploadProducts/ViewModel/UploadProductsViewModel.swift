//
//  UploadProductsViewModel.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 01/03/24.
//

import SwiftUI
import Firebase
import FirebaseStorage

// Function to upload images to Firebase Storage

class UploadProductViewModel: ObservableObject {
    @Published var selectedImages: [UIImage]? {
        didSet { Task { await loadImages(selectedImages) } }
    }
    
    @Published var productImages: [Image] = []
    
    @Published var isLoading: Bool = false
    
    private var uiImages: [UIImage] = []
    
    @MainActor
    func loadImages(_ images: [UIImage]?) async {
        guard let images = images else { return }
        
        for image in images {
            self.uiImages.append(image)
            self.productImages.append(Image(uiImage: image))
        }
    }
    
    @MainActor
    func uploadProduct(title: String, description: String, price: Int, discountPercentage: Double, rating: Double, stock: Int, category: String, thumbnail: String) async throws {
        isLoading = true
        
        guard let uid = Auth.auth().currentUser?.uid else { return }
        guard !uiImages.isEmpty else { return }
        
        let productRef = Firestore.firestore().collection("products").document()
        let brandRef = Firestore.firestore().collection("brands").document()
        
        guard let imageUrls = try await ImagesUploader.uploadImages(images: uiImages) else { return }
        
        var products: [Product] = []
        
        for (index, imageUrl) in imageUrls.enumerated() {
            let product = Product(id: productRef.documentID, businessId: brandRef.documentID, title: title, description: description, price: price, discountPercentage: discountPercentage, rating: rating, stock: stock, category: category, thumbnail: thumbnail, images: imageUrls)
            products.append(product)
        }
        
        for product in products {
            guard let encodedProduct = try? Firestore.Encoder().encode(product) else { continue }
            try await productRef.setData(encodedProduct)
        }
        
        isLoading = false
    }
}
