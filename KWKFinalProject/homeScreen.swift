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
                
                // WELCOME TEXT
                Text("Welcome to Ikigai!").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                HStack(spacing: 20){
                    Button(){
                        // action
                    }label:{
                        VStack{
                            Image("booklet-line")
                            Text("Journal").foregroundColor(.white)
                        }
                        .frame(width: 80.0, height: 110.0)
                        .padding()
                        .background(Color.gray)
                        .cornerRadius(20)
                    }
                    
                
                    
                    Button{
                        // action
                    }label:{
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
                
                // divide HSTACKS
                
                Spacer()
                    .frame(height: 50.0)
                
                HStack(spacing: 20){
                    Button(){
                        // action
                    }label:{
                        VStack{
                            Image("booklet-line")
                            Text("Resources").foregroundColor(.white)
                        }
                        .frame(width: 80.0, height: 110.0)
                        .padding()
                        .background(Color.gray)
                        .cornerRadius(20)

                          
                            
                    }
                    
                    
                    Button{
                        // action
                    }label:{
                        
                        VStack{
                            Image("booklet-line")
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

#Preview {
    ContentView()
}
