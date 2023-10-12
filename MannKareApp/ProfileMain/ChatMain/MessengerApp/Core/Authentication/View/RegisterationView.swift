//
//  RegisterationView.swift
//  MessengerApp
//
//  Created by Azhar Bahleem on 31/08/23.
//

import SwiftUI

struct RegisterationView: View {
    @StateObject var viewModel = RegisterationViewModel()
    @Environment (\.dismiss) var dismiss
    var body: some View {
        
        
        NavigationStack {

            VStack {
                
                Spacer()
                
                // logo image
                Image("logo2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .padding()
                
                
                // text fields
                VStack {
                    TextField("Enter your email", text: $viewModel.email)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(20)
                        .padding(.horizontal, 24)
                    
                    TextField("Enter your fullname", text: $viewModel.fullname)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(20)
                        .padding(.horizontal, 24)
                    
                    SecureField("Enter your password", text: $viewModel.password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(20)
                        .padding(.horizontal, 24)
                }
                
                
                
                // forgot password
                

                
                // login button
                
                Button{
                    Task { try await viewModel.createUser() }
                } label: {
                    Text("Sign Up")
                        .frame(width: 340, height: 44)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .background(Color(red: 0.839, green: -0.002, blue: 0.002))
                        .cornerRadius(20)
                        .padding(12)
                        
                        
                    
                }
                

                
                Spacer()
                
                // sign up link
                
                Divider()
                
                Button {
                    
                    dismiss()
                    
                } label: {
                    HStack(spacing: 3) {
                        Text("Already have an account?")
                            .foregroundColor(.black.opacity(0.7))
                        
                        Text("Sign In")
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.839, green: -0.002, blue: 0.002))
                            
                            
                    }
                    .font(.footnote)
                }
                .padding(.vertical)

                
            }
        }
        
        
    }
}

struct RegisterationView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterationView()
    }
}
