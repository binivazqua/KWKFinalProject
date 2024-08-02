//
//  addContactPage.swift
//  KWKFinalProject
//
//  Created by Biniza Verónica Vázquez Moreno on 01/08/24.
//

import SwiftUI

struct addContactPage: View {
    
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
    
    @Binding var contacts: [Contact]
    @Environment(\.presentationMode) var presentationMode
    
    @State private var name = ""
    @State private var description = ""
    @State private var igAccount = ""
    @State private var place = ""
    
    var body: some View {
        NavigationStack {
            ZStack{
                lightPink
                .edgesIgnoringSafeArea(.all)
                
                VStack {
                
                    
                        VStack(alignment: .leading) {
                            Text("Expand your network!").font(.title3).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).padding(.bottom)
                            
                            Text("Name:").padding(.bottom)
                            TextField("Type...", text: $name)
                                .padding()
                                .background(blueGray.opacity(0.6))
                                .cornerRadius(8)
                                .shadow(radius: 5)
                                .frame(maxWidth: 300)
                                .frame(height: 40)
                            
                            Text("Description:").padding(.vertical)
                            TextField("Type...", text: $description)
                                .padding()
                                .background(blueGray.opacity(0.6))
                                .cornerRadius(8)
                                .shadow(radius: 5)
                                .frame(maxWidth: 300)
                                .frame(height: 40)
                            
                            Text("Instagram Account:").padding(.vertical)
                            TextField("Type...", text: $igAccount)
                                .padding()
                                .background(blueGray.opacity(0.6))
                                .cornerRadius(8)
                                .shadow(radius: 5)
                                .frame(maxWidth: 300)
                                .frame(height: 40)
                            
                            Text("Place:").padding(.vertical)
                            TextField("Type...", text: $place)
                                .padding()
                                .background(blueGray.opacity(0.6))
                                .cornerRadius(8)
                                .shadow(radius: 5)
                                .frame(maxWidth: 300)
                                .frame(height: 40)
                            
                            VStack{
                                Button("Add Contact") {
                                    let newContact = Contact(
                                        name: name,
                                        descriptiveWord:
                                        description,
                                        igAccount: igAccount,
                                        place: place

                                )
                                    contacts.append(newContact)
                                    print(newContact)
                                    infoSaved  = true
                                    presentationMode.wrappedValue.dismiss()
                                    
                                }
                                .buttonStyle(.bordered)
                                .tint(.green)
                                .padding(.leading, 90)
                                
                                .alert("✅", isPresented: $infoSaved, actions: {
                                       Button("Ok!") {
                                             navigateToProfile = false
                                       }
                                    }, message: {
                                        Text("Contact Added")
                                    })
                                
                            }.padding(.top, 20)
                        
                            
                    }
                    
                    
                }
                    
                   
                
            }
                //.padding(10)
            }
            
    }
    
    private func clearNewContactFields() {
        name = ""
        description = ""
        igAccount = ""
        place = ""
    }
}




#Preview {
    addContactPage(userProfile: UserProfile(), contacts: .constant([]))
}
