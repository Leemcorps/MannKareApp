//
//  BagsAndFavsView.swift
//  MannKareApp
//
//  Created by Azhar Bahleem on 16/02/24.
//

import SwiftUI

struct BagsAndFavsView: View {
    @State private var selectedFilter: BagAndFavFilter = .favorites
    @Namespace var animation
    
    var body: some View {
        
        HStack(alignment: .top) {
                
                ForEach(BagAndFavFilter.allCases) { filter in
                    ZStack {
                        if selectedFilter == filter {
                            Rectangle()
                                .foregroundColor(.gray.opacity(0.2))
                                .frame(height: 40)
                                .cornerRadius(10)
                                .matchedGeometryEffect(id: "item", in: animation)
                                .padding(.horizontal)
                            
                            
                            
                        } else {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(height: 40)
                                .background(.clear)
                                .cornerRadius(10)
                                .padding(.horizontal)
                        }
                        
                        Text(filter.title)
                            .font(.subheadline)
                            .fontWeight(selectedFilter == filter ? .semibold : .regular)
                            .foregroundStyle(selectedFilter == filter ? Color.primary : Color.gray)
                    }
                    .onTapGesture {
                        withAnimation(.spring) {
                            selectedFilter = filter
                        }
                    }
                }
                .navigationTitle("Items")
                    
                }
                
            
        if selectedFilter == .favorites {
          //  FavView()
                
                
        } else if selectedFilter == .bag {
          //  BagView()
                
        }
        
        
        Spacer()
        
    }
}



#Preview {
    BagsAndFavsView()
}
