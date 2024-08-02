//
//  networkPage.swift
//  KWKFinalProject
//
//  Created by Biniza Verónica Vázquez Moreno on 30/07/24.
//

import SwiftUI

struct NetworkPage: View {
    
    @Binding var contacts: [Contact]
    
    @ObservedObject var userProfile: UserProfile
    
    @State private var goToAddContact = false
    
    // COLORS:
    
    let offWhite = Color(red: 0.9686274509803922, green: 0.9294117647058824, blue: 0.8862745098039215)
    let coral = Color(red: 0.9490196078431372, green: 0.5176470588235295, blue: 0.5098039215686274)
    let lightPink = Color(red: 1, green: 0.9333333333333333, blue: 0.9215686274509803)
    let yellow2 = Color(red: 0.9647058823529412, green: 0.7411764705882353, blue: 0.3764705882352941)
    let blueGray = Color(red: 0.5176470588235295, green: 0.6470588235294118, blue: 0.615686274509804)
    let pastelGreen = Color(red: 0.7098039215686275, green: 0.8235294117647058, blue: 0.5450980392156862)
    let darkTeal = Color(red: 0.52, green: 0.65, blue: 0.62)

    
    var body: some View {
        
        NavigationStack{
            
            
            VStack(alignment: .center) {
                
                VStack(alignment: .center) {
                    Image("user-line").padding(.top, 10)
                    Text("Username")
                }.padding(.vertical, 5)
                
                ScrollView{
                    LazyVGrid(columns: [GridItem(.flexible(minimum: 150, maximum: 200)), GridItem(.flexible(minimum: 150, maximum: 200))]){
                        
                        VStack{
                            Text("Pronouns:").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text(userProfile.pronouns)
                        }
                        .frame(width: 160.0, height: 100.0)
                        .background(Rectangle().foregroundColor(darkTeal).opacity(0.8))
                        .cornerRadius(20)
                        .shadow(color: .gray, radius: 5, x: 0, y: 5)
                        .padding(.top,5)
                        
                        VStack{
                            Text("Age:").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text(userProfile.age)
                        }
                        .frame(width: 160.0, height: 100.0)
                        .background(Rectangle().foregroundColor(coral).opacity(0.5))
                        .cornerRadius(20)
                        .shadow(color: .gray, radius: 5, x: 0, y: 5)
                        .padding(.top,5)
                        
                        VStack{
                            Text("I am...").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text(userProfile.descriptiveWord)
                            
                        }
                        .frame(width: 160.0, height: 100.0)
                        .background(Rectangle().foregroundColor(yellow2).opacity(0.5))
                        .cornerRadius(20)
                        .shadow(color: .gray, radius: 5, x: 0, y: 5)
                        .padding(5)
                        VStack{
                            Text("I love to...").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text(userProfile.passions)
                        }
                        .frame(width: 160.0, height: 100.0)
                        .background(Rectangle().foregroundColor(pastelGreen).opacity(0.8))
                        .cornerRadius(20)
                        .shadow(color: .gray, radius: 5, x: 0, y: 5)
                        .padding(.top, 5)
                        
                        VStack{
                            Text("I am good at...").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text(userProfile.talents)
                        }
                        .frame(width: 160.0, height: 100.0)
                        .background(Rectangle().foregroundColor(coral).opacity(0.5))
                        .cornerRadius(20)
                        .shadow(color: .gray, radius: 5, x: 0, y: 5)
                        .padding(5)
                        VStack{
                            Text("My MBTI:").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text(userProfile.mbti)
                        }
                        .frame(width: 160.0, height: 100.0)
                        .background(Rectangle().foregroundColor(darkTeal).opacity(0.5))
                        .cornerRadius(20)
                        .shadow(color: .gray, radius: 5, x: 0, y: 5)
                        .padding(.top, 5)
                        VStack{
                            Text("Mission:").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text(userProfile.mission)
                        }
                        .frame(width: 160.0, height: 100.0)
                        .background(Rectangle().foregroundColor(yellow2).opacity(0.5))
                        .cornerRadius(20)
                        .shadow(color: .gray, radius: 5, x: 0, y: 5)
                        .padding(.top, 5)
                        VStack{
                            Text("Vision:").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text(userProfile.vision)
                        }
                        .frame(width: 160.0, height: 100.0)
                        .background(Rectangle().foregroundColor(pastelGreen).opacity(0.8))
                        .cornerRadius(20)
                        .shadow(color: .gray, radius: 5, x: 0, y: 5)
                        .padding(.top, 5)
                        
                    }
                }.padding()
            }.frame(width: 400, height: 390)
            
            ScrollView {
                VStack(alignment: .leading) {
                    HStack {
                        Text("My network").font(.title3)
                        Spacer().frame(width: 85)
                        
                        Button(action: {
                            goToAddContact = true
                        }) {
                            Label("Add contact", systemImage: "person.crop.circle.badge.plus")
                        }.frame(width: 150.0)
                        .buttonStyle(.bordered)
                        .tint(.green)
                        
                        NavigationLink(destination: addContactPage(userProfile: UserProfile(),contacts: $contacts), isActive: $goToAddContact) {
                            EmptyView()
                        }
                    }
                    
                    ForEach(contacts) { contact in
                        HStack(alignment: .top) {
                            Image("user-line").padding()
                            
                            VStack(alignment: .leading) {
                                Text("Username: \(contact.name)")
                                
                                Text("Description: \(contact.descriptiveWord)")
                                
                                Text("Instagram: \(contact.igAccount)")
                                
                                Text("Place: \(contact.place)")
                                
                            }
                        }
                        .frame(width: 300,height: 150.0)
                        .background(Rectangle().foregroundColor(coral).opacity(0.8))
                        .cornerRadius(20)
                        .shadow(color: .gray, radius: 5, x: 0, y: 5)
                        .padding(.horizontal, 20)
                    }
                    
                    
                    
                }
                
            }
            
        }
        
    }}
        #Preview {
            NetworkPage(
                contacts: .constant([]),
                userProfile: UserProfile()
            )
        }
        
        
    

