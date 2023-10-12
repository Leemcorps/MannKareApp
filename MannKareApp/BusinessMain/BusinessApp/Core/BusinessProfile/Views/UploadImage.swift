//
//  UploadImage.swift
//  MessengerApp
//
//  Created by Azhar Bahleem on 23/09/23.
//

import SwiftUI
import PhotosUI

struct UploadImage: View {
    @State var description: String = ""
    @State private var plusSelected: PhotosPickerItem? = nil
    @StateObject var viewModel = UploadImageViewModel()
    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                
                VStack(alignment: .leading) {
                    Text("Upload your products")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding()
                    
                    TextField("Product Description", text: $description)
                        .padding()
                        .frame(width: UIScreen.main.bounds.width - 20, height: 50)
                        .foregroundColor(.blue)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(20)
                        .padding(.horizontal)
                    
                    
                    
                    
                        
                        PhotosPicker(selection: $viewModel.selectedItem, label: {
                            if let productimage = viewModel.productimage {
                                productimage
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: UIScreen.main.bounds.width - 20, height: 500)
                                    .cornerRadius(20)
                                    .padding(.horizontal)
                                    
                            } else {
                                
                                ZStack {
                                    Rectangle()
                                        .frame(width: UIScreen.main.bounds.width - 20, height: 500)
                                        .cornerRadius(20)
                                        .foregroundColor(.gray.opacity(0.2))
                                    
                                    
                                    Image(systemName: "plus.app.fill")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .foregroundColor(.blue)
                                    
                                }
                                .padding(.horizontal)
                                
                            }
                        })
                        
                        
                    
                    
                    
                    Button(action: {
                        
                    }) {
                        
                        ZStack {
                            
                            Rectangle()
                                .frame(width: UIScreen.main.bounds.width - 20, height: 50)
                                .cornerRadius(20)
                                .foregroundColor(.blue)
                                .padding(.horizontal)
                            
                            Text("Save")
                                .foregroundStyle(Color.white)
                                .fontWeight(.semibold)
                            
                        }
                        
                        
                        
                    }
                    
                    
                }
                //.frame(width: UIScreen.main.bounds.width)
                .padding()
                
                Spacer()
            }
        }
        .navigationTitle("upload products")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    UploadImage()
}
