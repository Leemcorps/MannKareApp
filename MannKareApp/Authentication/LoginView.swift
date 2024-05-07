//
//  LoginView.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 13/02/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    @Binding var showSignInView: Bool
    
    var body: some View {
        NavigationStack {

            VStack {
                
               // Spacer()
                
                // logo image
                Image("og3")
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
                        .cornerRadius(15)
                        .padding(.horizontal, 24)
                    
                    SecureField("Enter your password", text: $viewModel.password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(15)
                        .padding(.horizontal, 24)
                }
                
                
                
                // forgot password
                
                Button {
//                    Task {  AuthService.shared.resetPassword(email:) }
                } label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                        .foregroundColor(Color.secondary)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                // login button
                
                Button{
                    Task { try await viewModel.signIn() }
                } label: {
                    Text("Sign In")
                        .frame(width: 340, height: 50)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .background(Color.pink.opacity(0.7))
                        .cornerRadius(15)
                        .padding(12)
                }
                
                
                VStack(alignment: .center) {
                    //Google login
                    
                    HStack {
                        Rectangle()
                            .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                        
                        Text("OR")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Rectangle()
                            .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    }
                    .foregroundColor(.gray)
                    

                    
                    // google sign in
                    Button(action: {
                        Task {
                            do {
                                try await viewModel.signInWithGoogle()
                                showSignInView = false
                            } catch {
                                print(error.localizedDescription)
                            }
                        }
                    }, label: {
                        HStack {
                            Image("google")
                                .resizable()
                                .frame(width: 20, height: 20)
                            
                            Text("Sign in with Google")
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                        }
                        .frame(width: 340, height: 50)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(15)
                        .padding(12)
                    })
                    
                    
                    // Apple login
                    Button(action: {
                        Task {
                            do {
                                try await viewModel.signInApple()
                                showSignInView = false
                                
                            } catch {
                                print(error)
                            }
                        }
                                   
                    }, label: {
                        HStack(spacing: 10) {
                            Image("appleBlack")
                                .resizable()
                                .frame(width: 15, height: 15)
                            
                            Text("Sign in with Apple")
                                .font(.headline)
                                .fontWeight(.semibold)
                                
                        }
                        //.padding(.top, 8)
                        .frame(width: 340, height: 50)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .background(Color.primary)
                        .cornerRadius(15)
                        .padding(12)
                    })
                    
                }
                Spacer()
                
                // sign up link
                
                Divider()
                
                NavigationLink {
                    
               // AddEmailView()
                        
                        
                    
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")
                            .foregroundColor(.primary)
                        
                        Text("Sign Up")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.pink)
                            
                    }
                    .font(.footnote)
                }
                .padding(.vertical)

                
            }
        }
        
    }
}

#Preview {
    LoginView(showSignInView: .constant(false))
}
