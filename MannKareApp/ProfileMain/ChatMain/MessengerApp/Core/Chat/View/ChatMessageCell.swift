//
//  ChatMessageCell.swift
//  MessengerApp
//
//  Created by Azhar Bahleem on 03/09/23.
//

import SwiftUI

struct ChatMessageCell: View {
    let message: Message
    
    
    private var isFromCurrentUser: Bool {
        return message.isFromCurrentUser
    }
    
    
    var body: some View {
        HStack{
            if isFromCurrentUser {
                
                Spacer()
                
                HStack(alignment: .bottom, spacing: 8){
                    
                    
                    
                        //.frame(alignment: .bottomTrailing)
                    
                    Text(message.messageText)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemBlue))
                        .foregroundColor(Color(.white))
                        .clipShape(ChatBubble(isFromCurrentUser: isFromCurrentUser))
                        .frame(maxWidth: UIScreen.main.bounds.width / 1.75, alignment: .trailing)
                    
                    
                    
                }
                
                
                
            } else {
                HStack(alignment: .bottom, spacing: 8) {
                    CircularProfileImageView(user: nil, size: .xxSmall)
                    
                    Text(message.messageText)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray5))
                        .foregroundColor(Color(.black))
                        .clipShape(ChatBubble(isFromCurrentUser: isFromCurrentUser))
                        .frame(maxWidth: UIScreen.main.bounds.width / 1.75, alignment: .leading)
                    
                    Spacer()
                }
            }
        }
        .padding(.horizontal, 8)
    }
}

//struct ChatMessageCell_Previews: PreviewProvider {
//    static var previews: some View {
//        ChatMessageCell(isFromCurrentUser: false)
//    }
//}
