//
//  ChatView.swift
//  MessengerApp
//
//  Created by Azhar Bahleem on 02/09/23.
//

import SwiftUI

struct ChatView: View {
    @StateObject var viewModel: ChatViewModel
    let user: User
    
    init(user: User) {
        self.user = user 
        self._viewModel = StateObject(wrappedValue: ChatViewModel(user: user))
    }
    
    var body: some View {
        
        
        VStack{
            
            // header
            
            HStack {
                
                
                Spacer()
                
                
                
                CircularProfileImageView(user: user, size: .Small)
                
                
                
                VStack(alignment: .leading) {
                                        Text(user.fullname)
                        .font(.body)
                                            .fontWeight(.semibold)
                
                                        Text("Mannkare")
                                            .font(.footnote)
                                            .foregroundColor(.gray)
                                    }
                
                Spacer()
                
                
            }
            .padding(.horizontal)
            
            
            
            ScrollView {
                
                // header
                
//                VStack {
//                    CircularProfileImageView(user: user, size: .Small)
//
//                    VStack {
//                        Text(user.fullname)
//                            .font(.title3)
//                            .fontWeight(.semibold)
//
//                        Text("Messenger")
//                            .font(.footnote)
//                            .foregroundColor(.gray)
//                    }
//                }
                
                // messages
                
                ForEach(viewModel.messages) { message in
                    ChatMessageCell(message: message)
                    
                }
                
            }
            
            // message input view
            
            ZStack(alignment: .trailing) {
                TextField("Message", text: $viewModel.messageText, axis: .vertical)
                    .padding(12)
                    .padding(.trailing, 48)
                    .background(Color(.systemGroupedBackground))
                    .clipShape(Capsule())
                    .font(.subheadline)
                
                Button {
                    
                    viewModel.sendMessage()
                    viewModel.messageText = ""
                    
                } label: {
                    Text("Send")
                        .fontWeight(.semibold)
                }
                .padding(.horizontal)

                
            }
            .padding()
        }
        
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(user: User.MOCK_USER)
    }
}
