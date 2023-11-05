//
//  TabView.swift
//  GrowthHungry
//
//  Created by user on 6/11/23.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem { VStack{
                    
                    Image(systemName: "house")
                    
                    Text("Home")
                } }
            
            ChallengesView()
                .tabItem { VStack{
                    
                    Image(systemName: "book.pages")
                    
                    Text("Challenge")
                } }
            
            ProfileView()
                .tabItem { VStack{
                    
                    Image(systemName: "person")
                    
                    Text("Profile")
                } }
            
            
        }
    }
}

#Preview {
    TabBar()
}
