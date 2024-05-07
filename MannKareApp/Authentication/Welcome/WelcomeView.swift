//
//  WelcomeView.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 13/02/24.
//

import SwiftUI

struct WelcomeView: View {
    @StateObject var viewModel = WelcomeViewModel()
    @Binding var showSignInView: Bool
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("og3")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .padding()
                
                
                Button(action: {
                    Task {
                        do {
                            try await viewModel.welcomeSignIn()
                            showSignInView = false
                        } catch {
                            
                        }
                    }
                }, label: {
                    
                        Text("Get started")
                            .font(.headline)
                            .fontWeight(.semibold)
                   
                    .frame(width: 340, height: 50)
                    
                    
                    .foregroundColor(.white)
                    .background(.pink.opacity(0.9))
                    .cornerRadius(15)
                    .padding(12)
                })
                
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
                
                
                NavigationLink {
                    LoginView(showSignInView: $showSignInView)
                } label: {
                    Text("Sign In")
                        .frame(width: 340, height: 50)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .background(Color.gray.opacity(0.9))
                        .cornerRadius(15)
                        .padding(12)
                }
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    WelcomeView(showSignInView: .constant(false))
}
