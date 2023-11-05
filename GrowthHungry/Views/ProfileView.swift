//
//  ProfileView.swift
//  GrowthHungry
//
//  Created by user on 6/11/23.
//

import SwiftUI

struct ProfileView: View {
    @State private var picker = 0
    var body: some View {
      NavigationStack{
          ScrollView {
              HStack(alignment: .top) {
                    Image(systemName: "photo")
                        .frame(width: 50, height: 50)
                        .background(.blue)
                        .cornerRadius(10)
                    VStack(alignment: .leading) {
                        Text("User name")
                            .font(.title3)
                            .bold()
                            .lineLimit(1)
                        
                        Text("Phone number")
                            .font(.footnote)
                            .fontWeight(.medium)
                            .lineLimit(1)
                        
                        Text("Bio")
                            .font(.footnote)
                            .fontWeight(.medium)
                            .lineLimit(2)
                    }
                    
                    Spacer()
              }
              
              Divider()
              
              Text("Active challenge")
                  .font(.footnote)
                  .fontWeight(.light)
                  .foregroundStyle(.secondary)
              
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
                  
              }
              
              
              Picker("Picker for current and completed challenges", selection: $picker){
                  Text("Friends").tag(0)
                  Text("Clubs").tag(1)
                 
              }.pickerStyle(.segmented)
                  .frame(width: UIScreen.main.bounds.width-30)
                  .padding(.vertical)
              
              
              HStack{
                  
                 Image(systemName: "photo")
                      .frame(width: 40, height: 40)
                      .background(.blue)
                      .clipShape(Circle())
              }
              
          }
          .navigationTitle("Profile")
          .navigationBarTitleDisplayMode(.inline)
          .toolbar{
              ToolbarItem(placement: ToolbarItemPlacement.topBarTrailing) {
                  Image(systemName: "gear")
              }
          }
         
        }
    }
}

#Preview {
    ProfileView()
}
