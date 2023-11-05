//
//  HomeView.swift
//  GrowthHungry
//
//  Created by user on 6/11/23.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchText: String = ""
    
    var body: some View {
       
        NavigationStack {
            ScrollView {
                ForEach(0 ..< 5) { item in
                    VStack(alignment: .leading, spacing: 5.0) {
                        Image(systemName: "photo")
                        
                            .frame(width: UIScreen.main.bounds.width-30, height: 150)
                            .background(.blue)
                            .cornerRadius(18)
                        
                            .scaledToFit()
                          
                            
                        
                        
                        Text("Challenge title")
                            .font(.title3)
                            .fontWeight(.bold)
                        HStack {
                            Text("User or organization offering the challenge")
                                .font(.footnote)
                            .fontWeight(.medium)
                            
                            Spacer()
                            
                            Image(systemName: "person.fill")
                                .background(.blue)
                                .frame(width: 15, height: 15)
                                .scaledToFill()
                                .cornerRadius(15)
                              
                            
                        }
                        
                        Divider()
                            .padding(.bottom)
                    }
                    .padding(.horizontal)
                            .navigationTitle("Challenge Yourself")
                        .searchable(text: $searchText)
                }
            }
            
        }
    }
}

#Preview {
    HomeView()
}
