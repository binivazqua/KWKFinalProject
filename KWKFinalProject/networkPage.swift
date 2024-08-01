//
//  networkPage.swift
//  KWKFinalProject
//
//  Created by Biniza Verónica Vázquez Moreno on 30/07/24.
//

import SwiftUI

struct networkPage: View {
    
    @Environment(\.managedObjectContext) var context
    
    @FetchRequest(
      entity: UserData.entity(), sortDescriptors: [ NSSortDescriptor(keyPath: \UserData.id, ascending: false) ])
    
        
    var userProfileData: FetchedResults<UserData>
    
    //@Binding var bindingAge : String
    
    
    
    var body: some View {
        NavigationStack{
            VStack{
                
        
                VStack(alignment: .center) {
                        Image("user-line")
                        Text("Username")
                            .font(.headline)
                }
                .padding(.vertical, 5)
                
                // INTERESTS
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("My interests...")
                            .font(.title3)
                            .fontWeight(.bold)
                            .padding(.bottom)
                        
                    }
                }
                
                ForEach (userProfileData) { profile in
                    Text(profile.age ?? "No age")
                    Text(profile.descriptive_word ?? "No title")
                    Text(profile.vision ?? "No title")
                    
                    
                }
                
                NavigationLink(destination: UserNetworkPage()){
                    Text("Go to profile")
                }
            }
        }
    }
}

#Preview {
    networkPage()
}
