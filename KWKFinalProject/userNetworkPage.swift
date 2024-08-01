//
//  userNetworkPage.swift
//  KWKFinalProject
//
//  Created by Biniza Verónica Vázquez Moreno on 31/07/24.
//

import SwiftUI

struct UserNetworkPage: View {
    @ObservedObject var userProfile: UserProfile
    @State private var navigateToProfile = false
    @State private var infoSaved = false
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack(alignment: .center) {
                    Image("user-line")
                    Text("Username")
                }.padding(.vertical, 5)
                
                ScrollView {
                    VStack(alignment: .leading) {
                        Text("My interests...").font(.title3).padding(.bottom)
                        
                        Text("My pronouns are:")
                        TextField("Type...", text: $userProfile.pronouns)
                        
                        Text("Age:")
                        TextField("Type...", text: $userProfile.age)
                        
                        Text("Word that describes me:")
                        TextField("Type...", text: $userProfile.descriptiveWord)
                        
                        Text("I love to:")
                        TextField("Type...", text: $userProfile.passions)
                        
                        Text("I am good at:")
                        TextField("Type...", text: $userProfile.talents)
                        
                        Text("MBTI Personality Type:")
                        TextField("Type...", text: $userProfile.mbti)
                        
                        Text("Mission:")
                        TextField("Type...", text: $userProfile.mission)
                        
                        Text("Vision:")
                        TextField("Type...", text: $userProfile.vision)
                    }.padding(.leading, 20.0)
                }
                
                Button("Save info") {
                        infoSaved = true
                }
                .buttonStyle(.bordered)
                .tint(.green)
                                
            // NavigationLink outside the alert
                NavigationLink(destination: NetworkPage(userProfile: userProfile), isActive: $navigateToProfile) {
                     EmptyView()
                }
               }
               .alert("✅", isPresented: $infoSaved, actions: {
                       Button("Go to profile") {
                             navigateToProfile = true
                       }
                    }, message: {
                        Text("Info saved successfully!")
                    })
        }
        .padding(10)
    }
}

#Preview {
    UserNetworkPage(userProfile: UserProfile())
}

