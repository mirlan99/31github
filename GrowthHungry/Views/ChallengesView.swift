//
//  ChallengesView.swift
//  GrowthHungry
//
//  Created by user on 6/11/23.
//

import SwiftUI

struct ChallengesView: View {
    
    @State private var picker: Int = 0

    var body: some View {
            VStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Track your challenges")
                            .font(.title)
                        .fontWeight(.bold)
                        
                        Button(action: {}, label: {
                            
                            
                        })
                        
                    }
                    
                    Picker("Picker for current and completed challenges", selection: $picker){
                        Text("Current").tag(0)
                        Text("Completed").tag(1)
                        Text("Upcoming").tag(2)
                    }.pickerStyle(.segmented)
                        .frame(width: UIScreen.main.bounds.width-30)
                }
                
                ScrollView {
                    
                    
                    
                    if picker == 0 {
                        ForEach(0 ..< 5) { item in
                            VStack(alignment: .leading, spacing: 5.0) {
                                Image(systemName: "photo")
                                
                                    .frame(width: UIScreen.main.bounds.width-30, height: 150)
                                    .background(.blue)
                                    .cornerRadius(18)
                                
                                    .scaledToFit()
                                
                                
                                
                                
                                Text("Your Current challenges")
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
                            
                            
                            
                            
                        }
                    }
                    
                    else if picker == 1 {
                        ForEach(0 ..< 5) { item in
                            VStack(alignment: .leading, spacing: 5.0) {
                                Image(systemName: "photo")
                                
                                    .frame(width: UIScreen.main.bounds.width-30, height: 150)
                                    .background(.blue)
                                    .cornerRadius(18)
                                
                                    .scaledToFit()
                                
                                
                                
                                
                                Text("Your completed challenges")
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
                            
                            
                            
                            
                        }
                    }
                    
                    
                    else {
                        ForEach(0 ..< 5) { item in
                            VStack(alignment: .leading, spacing: 5.0) {
                                Image(systemName: "photo")
                                
                                    .frame(width: UIScreen.main.bounds.width-30, height: 150)
                                    .background(.blue)
                                    .cornerRadius(18)
                                
                                    .scaledToFit()
                                
                                
                                
                                
                                Text("Your upcoming challenges")
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
                            
                            
                            
                            
                        }
                    }
                }
                
            .navigationBarTitleDisplayMode(.inline)
            }
            
                
            
                   
                
                
            
                
        }
    }


#Preview {
    ChallengesView()
}

