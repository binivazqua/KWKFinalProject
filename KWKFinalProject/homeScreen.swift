//
//  ContentView.swift
//  KWKFinalProject
//
//  Created by Biniza Verónica Vázquez Moreno on 26/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                
                // App logo
                Image("ikigai_icon")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100.0, height: 100.0)
                    .cornerRadius(/*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    
                
                // WELCOME TEXT
                Text("Welcome to Ikigai!").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
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
                            .background(Color.gray)
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
                            .background(Color.gray)
                            .cornerRadius(20)
                        }

                            
                    }
                    
                }
                
                // divide HSTACKS
                
                Spacer()
                    .frame(height: 50.0)
                
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
                            .background(Color.gray)
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
                            .background(Color.gray)
                            .cornerRadius(20)

                        }
                
                    }
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
