//
//  EditBrandView.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 29/02/24.
//

import SwiftUI
import Kingfisher

struct EditBrandView: View {
    @State private var showEditBrandProfile: Bool = false
    let user: DBUser
    
    var body: some View {
        ZStack {
            Rectangle()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .foregroundStyle(.gray.opacity(0.1))
                .frame(width: UIScreen.main.bounds.width, height: 180)
            
            HStack {
                VStack(alignment: .leading) {
                    Circle()
                        .frame(width: 80, height: 80)
                    
                    Text("Brand Name")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Text("Description")
                        .font(.footnote)
                    
                    Text("Website")
                        .font(.footnote)
                }
                
                Spacer()
                
                VStack {
                    HStack(spacing: 29) {
                        HStack {
                            Text("28")
                                .font(.title2)
                                .foregroundStyle(.blue)
                            +
                            Text(" Products")
                        }
                        
                        HStack {
                            Text("15")
                                .font(.title2)
                                .foregroundStyle(.blue)
                            +
                            Text(" Followers")
                        }
                    }
                }
                
            }.padding(.horizontal)
        }
        .frame(width: UIScreen.main.bounds.width, height: 180)
        
    }
}

#Preview {
    EditBrandView(user: DBUser(userId: ""))
}
