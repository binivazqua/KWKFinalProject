//
//  userNetworkPage.swift
//  KWKFinalProject
//
//  Created by Biniza Verónica Vázquez Moreno on 31/07/24.
//

import SwiftUI

struct UserNetworkPage: View {
    
    // COLORS:
   
    let offWhite = Color(red: 0.9686274509803922, green: 0.9294117647058824, blue: 0.8862745098039215)
    let blueGray = Color(red: 0.5176470588235295, green: 0.6470588235294118, blue: 0.615686274509804)
    let yellow2 = Color(red: 0.9647058823529412, green: 0.7411764705882353, blue: 0.3764705882352941).opacity(0.9)
    let lightPink = Color(red: 1, green: 0.9333333333333333, blue: 0.9215686274509803)
    let buttonColor = Color(red: 1, green: 0.35294117647058826, blue: 0.4117647058823529)
    let coral = Color(red: 0.9490196078431372, green: 0.5176470588235295, blue: 0.5098039215686274)
    
       
    
    @ObservedObject var userProfile: UserProfile
    @State private var navigateToProfile = false
    @State private var infoSaved = false
    
    var body: some View {
        NavigationStack {
            ZStack{
                lightPink
                .edgesIgnoringSafeArea(.all)
                
                VStack {
                    VStack(alignment: .center) {
                        Image("user-line")
                            .foregroundColor(lightPink)
                        Text("Username")
                    }.padding(.vertical, 10)
                    
                    ScrollView {
                        VStack(alignment: .leading) {
                            Text("My interests...").font(.title3).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).padding(.bottom)
                            
                            Text("My pronouns are:").padding(.bottom)
                            TextField("Type...", text: $userProfile.pronouns)
                                .padding()
                                .background(blueGray.opacity(0.6))
                                .cornerRadius(8)
                                .shadow(radius: 5)
                                .frame(maxWidth: 300)
                                .frame(height: 40)
                            
                            Text("Age:").padding(.vertical)
                            TextField("Type...", text: $userProfile.age)
                                .padding()
                                .background(blueGray.opacity(0.6))
                                .cornerRadius(8)
                                .shadow(radius: 5)
                                .frame(maxWidth: 300)
                                .frame(height: 40)
                            
                            Text("Word that describes me:").padding(.vertical)
                            TextField("Type...", text: $userProfile.descriptiveWord)
                                .padding()
                                .background(blueGray.opacity(0.6))
                                .cornerRadius(8)
                                .shadow(radius: 5)
                                .frame(maxWidth: 300)
                                .frame(height: 40)
                            
                            Text("I love to:").padding(.vertical)
                            TextField("Type...", text: $userProfile.passions)
                                .padding()
                                .background(blueGray.opacity(0.6))
                                .cornerRadius(8)
                                .shadow(radius: 5)
                                .frame(maxWidth: 300)
                                .frame(height: 40)
                            
                            Text("I am good at:").padding(.vertical)
                            TextField("Type...", text: $userProfile.talents)
                                .padding()
                                .background(blueGray.opacity(0.6))
                                .cornerRadius(8)
                                .shadow(radius: 5)
                                .frame(maxWidth: 300)
                                .frame(height: 40)
                            
                            Text("MBTI Personality Type:").padding(.vertical)
                            TextField("Type...", text: $userProfile.mbti)
                                .padding()
                                .background(blueGray.opacity(0.6))
                                .cornerRadius(8)
                                .shadow(radius: 5)
                                .frame(maxWidth: 300)
                                .frame(height: 40)
                            
                            Text("Mission:").padding(.vertical)
                            TextField("Type...", text: $userProfile.mission)
                                .padding()
                                .background(blueGray.opacity(0.6))
                                .cornerRadius(8)
                                .shadow(radius: 5)
                                .frame(maxWidth: 300)
                                .frame(height: 40)
                            
                            Text("Vision:").padding(.vertical)
                            TextField("Type...", text: $userProfile.vision)
                                .padding()
                                .background(blueGray.opacity(0.6))
                                .cornerRadius(8)
                                .shadow(radius: 5)
                                .frame(maxWidth: 300)
                                .frame(height: 40)
                        }.padding(10.0)
                    }
                    
                    HStack(alignment: .center, spacing: 10.0) {
                        Button("Save", systemImage: "pencil") {
                            infoSaved = true
                        }
                        .buttonStyle(.bordered)
                        .tint(buttonColor)
                        
                        
                    
                        Button("View Profile", systemImage: "person.fill.viewfinder") {
                            navigateToProfile = true
                        }
                        .buttonStyle(.bordered)
                        .tint(buttonColor)
                        .padding(.leading, 20.0)
                        
                        // NavigationLink outside the alert
                        NavigationLink(destination: NetworkPage(userProfile: userProfile), isActive: $navigateToProfile) {
                            EmptyView()
                        }
                        .alert("✅", isPresented: $infoSaved, actions: {
                               Button("Ok!") {
                                     navigateToProfile = false
                               }
                            }, message: {
                                Text("Info saved successfully!")
                            })
                    }.padding()
                }
                    
                   
                
            }
                //.padding(10)
            }
            
    }
}

#Preview {
    UserNetworkPage(userProfile: UserProfile())
}

