//
//  ContentView.swift
//  KWKFinalProject
//
//  Created by Biniza Verónica Vázquez Moreno on 26/07/24.
//

import SwiftUI

struct ContentView: View {
    let bgColorIn = Color(red: 0.9686274509803922, green: 0.9294117647058824, blue: 0.8862745098039215)
    let bgColorOut = Color(red: 0.5176470588235295, green: 0.6470588235294118, blue: 0.615686274509804)
    let yellow2 = Color(red: 0.9647058823529412, green: 0.7411764705882353, blue: 0.3764705882352941)
    
    var body: some View {
        NavigationStack{
            ZStack{
                bgColorOut.edgesIgnoringSafeArea(.all)
                VStack{
                    Spacer()
                        .frame(height: 50)
                    
                    // App logo
                    Image("ikigai_icon")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color.purple)
                        .frame(width: 100.0, height: 100.0)
                        .cornerRadius(/*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .border(yellow2, width: 4).cornerRadius(16)
                    
                    
                    // WELCOME TEXT
                    Text("Welcome to Ikigai!").font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/).fontWeight(.bold)
                    HStack(spacing: 20){
                        Button(){
                            // action
                        }label:{
                            
                            NavigationLink(destination: journalPage()){
                                VStack{
                                    Image("booklet-line")
                                    Text("Journal").foregroundColor(.white)
                                }
                                .frame(width: 80.0, height: 110.0)
                                .padding()
                                .background(yellow2.opacity(0.87))
                                .cornerRadius(20)
                            }
                            
                        }
                        
                        
                        
                        Button{
                            // action
                        }label:{
                            
                            NavigationLink(destination: quizzesPage()){
                                VStack{
                                    Image("contract-line")
                                    Text("Quiz").foregroundColor(.white)
                                }
                                .frame(width: 80.0, height: 110.0)
                                .padding()
                                .background(yellow2.opacity(0.87))
                                .cornerRadius(20)
                            }
                            
                            
                        }
                        
                    }
                    
                    // divide HSTACKS
                    
                    Spacer()
                        .frame(height: 35)
                    
                    HStack(spacing: 20){
                        Button(){
                            // action
                        }label:{
                            
                            NavigationLink(destination: resourcesPage()){
                                VStack{
                                    Image("resources")
                                    Text("Resources").foregroundColor(.white)
                                }
                                .frame(width: 80.0, height: 110.0)
                                .padding()
                                .background(yellow2.opacity(0.87))
                                .cornerRadius(20)
                            }
                            
                        }
                        
                        
                        Button{
                            // action
                        }label:{
                            
                            NavigationLink(destination: networkPage()){
                                VStack{
                                    Image("network")
                                    Text("Network").foregroundColor(.white)
                                }
                                .frame(width: 80.0,height: 110.0)
                                .padding()
                                .background(yellow2.opacity(0.87))
                                .cornerRadius(20)
                                
                            }
                        }
                    }
                    Spacer()
                        .frame(height: 40)
                    Text("Ikigai - the reason for being; the thing that gets you up in the morning.")
                        .italic()
                        .padding(.all, 15.0)

                }
                .padding()
                .background(Rectangle()
                .foregroundColor(bgColorIn.opacity(0.77))
                .frame(width: 350, height: 690)
                .cornerRadius(20))
                .shadow(radius:15)
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}

