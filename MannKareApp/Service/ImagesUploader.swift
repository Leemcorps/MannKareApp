//
//  ImagesUploader.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 02/03/24.
//

import Foundation
import SwiftUI
import Firebase
import FirebaseStorage

struct ImagesUploader {

    
    
    
    
    static func uploadImages(images: [UIImage]) async throws -> [String]? {
        var downloadURLs: [String] = []
        
        for image in images {
            guard let imageData = image.jpegData(compressionQuality: 0.5) else { continue }
            let filename = UUID().uuidString
            let ref = Storage.storage().reference(withPath: "brand_logo/\(filename)")
            
            do {
                try await ref.putData(imageData)
                let url = try await ref.downloadURL()
                downloadURLs.append(url.absoluteString)
            } catch {
                print("Failed to upload image with error: \(error.localizedDescription)")
                // Return nil if any image upload fails
                return nil
            }
        }
        
        return downloadURLs
    }
    
    
    
    
    
    
    
    
//    func uploadImagesToFirebase(images: [UIImage]) {
//        let storage = Storage.storage()
//        let storageRef = storage.reference()
//        
//        
//
//        for (index, image) in images.enumerated() {
//            guard let imageData = image.jpegData(compressionQuality: 0.5) else { return }
//
//            let imageRef = storageRef.child("ProductImages/image\(index).jpg")
//
//            let uploadTask = imageRef.putData(imageData, metadata: nil) { (metadata, error) in
//                guard let _ = metadata else {
//                    // Uh-oh, an error occurred!
//                    return
//                }
//                // Metadata contains file metadata such as size, content-type.
//                // You can access the download URL after upload.
//                imageRef.downloadURL { (url, error) in
//                    guard let downloadURL = url else {
//                        // Uh-oh, an error occurred!
//                        return
//                    }
//                    print("Image uploaded successfully: \(downloadURL)")
//                }
//            }
//        }
//    }
}
