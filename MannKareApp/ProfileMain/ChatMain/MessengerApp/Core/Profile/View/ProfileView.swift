//
//  ProfileView.swift
//  MessengerApp
//
//  Created by Azhar Bahleem on 31/08/23.
//

import SwiftUI
import PhotosUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    let user: User
    var body: some View {
        
        
        
        VStack {
            
            
            // header
            
            VStack{
                PhotosPicker(selection: $viewModel.selectedItem, label:{
                    
                    if let profileImage = viewModel.profileimage {
                        profileImage
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                    } else {
                        CircularProfileImageView(user: user, size: .xLarge)
                    }
                    
                })
                
                Text(user.fullname)
                    .font(.title2)
                    .fontWeight(.semibold)

            }
            
            // list
            
            List {
                Section {
                    ForEach(SettingsOptionsViewModel.allCases) { option in
                        
                        HStack {
                            Image(systemName: option.imageName)
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(option.imageBackgroundColor)
                            
                            Text(option.title)
                                .font(.subheadline)
                        }
                    }
                }
                
                
                Section {
                    Button("Sign Out") {
                        AuthService.shared.signOut()
                            
                    }
                    
                    
                    
                    Button("Delete Account") {
                        print("account deleted")
                    }
                    
                    
                }.foregroundColor(.red)
                    .font(.subheadline)
                
            }
            
            
        }
        


    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.MOCK_USER)
    }
}
