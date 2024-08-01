//
//  userNetworkPage.swift
//  KWKFinalProject
//
//  Created by Biniza Verónica Vázquez Moreno on 31/07/24.
//

import SwiftUI

struct userNetworkPage: View {
    
   
    
    @State private var pronouns = ""
    @State private var age = ""
    @State private var descriptive_wrd = ""
    @State private var passions = ""
    @State private var talents = ""
    @State private var mbti = ""
    @State private var mission = ""
    @State private var vision = ""
    
    /// ALERT IMPLEMENTATION:
        @State private var infoSaved = false
    
    var body: some View {
        NavigationStack{
            VStack{
                
                VStack(alignment: .center){
                    // IMAGE
                    Image("user-line")

                    
                    // USERNAME
                    Text("Username")
                }.padding(.vertical, 5)
                
                ScrollView{
                    
                    VStack(alignment: .leading){
                        // INTERESTS
                        Text("My interests...").font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/).padding(.bottom)
                        
                        Text("My pronouns are:")
                        TextField("Type...", text: $pronouns)
                        
                        Text("Age:")
                        TextField("Type...", text: $age)
                        
                        Text("Word that describes me:")
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
                    
                }
                
                Button("Save info"){
                    
                    infoSaved = true
                    
                }.buttonStyle(.bordered)
                    .tint(.green)
                
                
            }
            
            // ALERT CALL GOES HERE
            .alert("✅", isPresented: $infoSaved, actions: {
            // implement button here
                Button("Continue"){}
            },
            // show up text
                   message: {
                Text("Info saved successfully!")
        
            })
                    
            
        }.padding(10)
    }
}

#Preview {
    userNetworkPage()
}
