//
//  SetUpBusinessView.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 14/03/24.
//

import SwiftUI

struct SetUpBusinessView: View {
    @StateObject var viewModel = SetUpBusinessViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    
                    HStack(alignment: .top) {
                        
                    
                    
                    ZStack(alignment: .bottomTrailing) {
                        
                        ZStack {
                            Circle()
                                .frame(width: 85, height: 85)
                                .foregroundStyle(Color.blue)
                            
                            Circle()
                                .frame(width: 80, height: 80)
                                .foregroundStyle(Color.white)
                            
                            
                            Image(systemName: "photo.circle.fill")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .foregroundStyle(Color.gray.opacity(0.1))
                        }
                        
                        
                        ZStack {
                            Circle()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(Color.white)
                            
                            
                            Image(systemName: "plus.circle.fill")
                                .frame(width: 20, height: 20)
                                .foregroundStyle(Color.blue)
                        }
                        
                    }
                    //.padding(.horizontal)
                    .padding(.bottom)
                    
                        
                        VStack(alignment: .leading) {
                            Text("Store name")
                                .font(.title2)
                                .fontWeight(.semibold)
                                //.padding(.horizontal)

                            TextField("Enter your store name here.", text: $viewModel.brandName)
                                .frame(height: 55)
                                .frame(maxWidth: .infinity)
                                .font(.headline)
                                .padding(.horizontal)
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(20)
                                //.padding(.horizontal)
                        }
                        
                        
                    }.padding(.horizontal)
                    
                    VStack(alignment: .leading) {
                        Text("Description")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding(.horizontal)

                        TextField("Describe your store here.", text: $viewModel.brandDescription)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity)
                            .font(.headline)
                            .padding(.horizontal)
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(20)
                            .padding(.horizontal)
                    }//.padding(.vertical)
                    
                    
                    VStack(alignment: .leading) {
                        Text("Do you have a website?")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding(.horizontal)

                        TextField("myWebsite.com", text: $viewModel.website)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity)
                            .font(.headline)
                            .padding(.horizontal)
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(20)
                            .padding(.horizontal)
                    }.padding(.vertical)
                    
                    
    //                NavigationLink {
    //                    BrandProfile()
    //                    
    //                } label: {
    //                    Text("Get Started")
    //                        .frame(height: 55)
    //                        .frame(maxWidth: .infinity)
    //                        .font(.headline)
    //                        .fontWeight(.semibold)
    //                        .foregroundColor(.white)
    //                        .background(Color.pink.opacity(0.9))
    //                        .cornerRadius(20)
    //                        .padding(12)
    //                }

                    
                    Button(action: {
                        Task {
                            try await viewModel.SetUpBusiness()
                            
      
                        }
                    }, label: {
                        Text("Get Started")
                            .frame(height: 55)
                            .frame(maxWidth: .infinity)
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .background(Color.pink.opacity(0.9))
                            .cornerRadius(20)
                            .padding(12)
                    })
                    
                }.padding(.top, 30)
                
                    .navigationTitle("Set up your store")
                    .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

#Preview {
    SetUpBusinessView()
}
