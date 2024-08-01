//
//  userNetworkPage.swift
//  KWKFinalProject
//
//  Created by Biniza Verónica Vázquez Moreno on 31/07/24.
//

import SwiftUI

struct UserNetworkPage: View {
    let yellow2 = Color(red: 0.9647058823529412, green: 0.7411764705882353, blue: 0.3764705882352941).opacity(0.8)
    let lightPink = Color(red: 1, green: 0.9333333333333333, blue: 0.9215686274509803)
    let buttonColor = Color(red: 1, green: 0.35294117647058826, blue: 0.4117647058823529)
    
    @State private var pronouns = ""
    @State private var age = ""
    @State private var descriptive_wrd = ""
    @State private var passions = ""
    @State private var talents = ""
    @State private var mbti = ""
    @State private var mission = ""
    @State private var vision = ""
    
    @State private var infoSaved = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                yellow2
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    VStack(alignment: .center) {
                        Image("user-line")
                        Text("Username")
                            .font(.headline)
                    }
                    .padding(.vertical, 5)
                    
                    ScrollView {
                        VStack(alignment: .leading, spacing: 15) {
                            Text("My interests...")
                                .font(.title3)
                                .fontWeight(.bold)
                                .padding(.bottom)
                            
                            Group {
                                Text("My pronouns are:")
                                textField(text: $pronouns)
                                
                                Text("Age:")
                                textField(text: $age)
                                
                                Text("Word that describes me:")
                                textField(text: $descriptive_wrd)
                                
                                Text("I love to:")
                                textField(text: $passions)
                                
                                Text("I am good at:")
                                textField(text: $talents)
                                
                                Text("MBTI Personality Type:")
                                textField(text: $mbti)
                                
                                Text("Mission:")
                                textField(text: $mission)
                                
                                Text("Vision:")
                                textField(text: $vision)
                            }
                            .padding(.leading, 20.0)
                        }
                        .padding(.top)
                    }
                    
                    Button("Save info") {
                        infoSaved = true
                    }
                    .buttonStyle(.bordered)
                    .tint(buttonColor)
                }
                .padding(10)
                .alert("✅", isPresented: $infoSaved) {
                    Button("Continue") {}
                } message: {
                    Text("Info saved successfully!")
                }
            }
        }
    }
    
    // Text Field
    private func textField(text: Binding<String>) -> some View {
        TextField("Type...", text: text)
            .padding()
            .background(lightPink.opacity(0.8))
            .cornerRadius(8)
            .shadow(radius: 5)
            .frame(maxWidth: 300)
            .frame(height: 40)
    }
}

#Preview {
    UserNetworkPage()
}

