//
//  userNetworkPage.swift
//  KWKFinalProject
//
//  Created by Biniza Verónica Vázquez Moreno on 31/07/24.
//

import SwiftUI

struct userNetworkPage: View {
    
    @State private var pronouns = ""
    @State private var descriptive_wrd = ""
    @State private var passions = ""
    @State private var talents = ""
    @State private var mbti = ""
    @State private var mission = ""
    @State private var vision = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                
                VStack(alignment: .center){
                    // IMAGE
                    Image("user-line")

                    
                    // USERNAME
                    Text("Username")
                }.padding(.vertical, 5)
                
                VStack(alignment: .leading){
                    // INTERESTS
                    Text("My interests...").font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/).padding(.bottom)
                    
                    Text("My pronouns are:")
                    TextField("Type...", text: $pronouns)
                    
                    Text("Describe myself with one word:")
                    TextField("Type...", text: $descriptive_wrd)
                    
                    Text("I love to:")
                    TextField("Type...", text: $passions)
                    
                    Text("I am good at:")
                    TextField("Type...", text: $talents)
                    
                    Text("MBTI Personality Type:")
                    TextField("Type...", text: $mbti)
                    
                    Text("Mission:")
                    TextField("Type...", text: $mission)
                    
                    Text("Vision:")
                    TextField("Type...", text: $vision)

                    //Spacer()
                        //.frame(width: 300.0)
                    
                    
                }.padding(.leading, 20.0)
                
                Button("Save info"){
                        
                    
                }.buttonStyle(.bordered)
                    .tint(.green)
                
                
                
                
            }
        }
    }
}

#Preview {
    userNetworkPage()
}
