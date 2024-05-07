//
//  UploadProductsView.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 01/03/24.
//

import SwiftUI

struct UploadProductsView: View {
    @StateObject var viewModel = UploadProductViewModel()

    @State private var title = ""
    @State private var description = ""
    @State private var price = ""
    @State private var discountPercentage = ""
    @State private var rating = ""
    @State private var stock = ""
    @State private var category = ""
    @State private var thumbnail = ""
    
    @State private var selectedImages: [UIImage]? = nil
    
    var body: some View {
        ScrollView {
            VStack {
                // TextFields for Product Details
                TextField("Title", text: $title)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Description", text: $description)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Price", text: $price)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                
                TextField("Discount Percentage", text: $discountPercentage)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad)
                
                TextField("Rating", text: $rating)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad)
                
                TextField("Stock", text: $stock)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                
                TextField("Category", text: $category)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Thumbnail", text: $thumbnail)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                // Button to Select Images
                
                VStack {
                           if let images = selectedImages {
                               ScrollView {
                                   LazyVStack {
                                       ForEach(images, id: \.self) { image in
                                           Image(uiImage: image)
                                               .resizable()
                                               .aspectRatio(contentMode: .fit)
                                               .frame(width: 100, height: 100)
                                       }
                                   }
                               }
                           } else {
                               Button("Select Images") {
                                   // Present image picker
                                   // This assumes you have a `ImagePickerView` in your project
                                   // and that you've bound `selectedImages` to it
                                   // You can customize this to fit your project structure
                                   // e.g., use a state variable to control the presentation of the picker
                                   // and update `selectedImages` accordingly
                                   // (e.g., `@State private var isShowingImagePicker = false`)
                                   // and set it to true in the action of this button
                               }
                               .padding()
                           }
                       }
                       .sheet(isPresented: .constant(true)) {
                           ImagePickerView(selectedImages: $selectedImages)
                       }
               
                
                // Button to Upload Product
                Button("Upload Product") {
                    Task {
                      try await  viewModel.uploadProduct(title: title,
                                                 description: description,
                                                 price: Int(price) ?? 0,
                                                 discountPercentage: Double(discountPercentage) ?? 0.0,
                                                 rating: Double(rating) ?? 0.0,
                                                 stock: Int(stock) ?? 0,
                                                 category: category,
                                                 thumbnail: thumbnail)
                    }
                }
                .padding()
                .disabled(viewModel.isLoading)
                
                // Loading Indicator
                if viewModel.isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .padding()
        }
    }

}

#Preview {
    UploadProductsView()
}


