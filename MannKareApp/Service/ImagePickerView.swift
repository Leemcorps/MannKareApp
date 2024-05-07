//
//  ImageService.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 15/02/24.
//

import SwiftUI
import PhotosUI
import Firebase
import FirebaseStorage

struct ImagePickerView: UIViewControllerRepresentable {
    @Binding var selectedImages: [UIImage]?

    class Coordinator: NSObject, PHPickerViewControllerDelegate {
        var parent: ImagePickerView

        init(_ parent: ImagePickerView) {
            self.parent = parent
        }

        func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
            picker.dismiss(animated: true)
            
            var images = [UIImage]()
            let group = DispatchGroup()

            for result in results {
                group.enter()
                result.itemProvider.loadObject(ofClass: UIImage.self) { image, error in
                    defer { group.leave() }

                    if let error = error {
                        print("Error: \(error.localizedDescription)")
                        return
                    }

                    if let image = image as? UIImage {
                        images.append(image)
                    }
                }
            }

            group.notify(queue: .main) {
                self.parent.selectedImages = images
            }
        }
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }

    func makeUIViewController(context: Context) -> PHPickerViewController {
        var configuration = PHPickerConfiguration()
        configuration.selectionLimit = 0 // Set to 0 for unlimited selection
        let picker = PHPickerViewController(configuration: configuration)
        picker.delegate = context.coordinator
        return picker
    }

    func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) {
        // No update needed
    }
}
