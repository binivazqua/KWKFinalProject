//
//  quizzesPage.swift
//  KWKFinalProject
//
//  Created by Biniza Verónica Vázquez Moreno on 30/07/24.
//

import SwiftUI
import SafariServices

struct quizzesPage: View {
   
    var body: some View {
        NavigationStack{
            
            //.font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/).position(CGPoint(x: 140.0, y: 10.0))
            VStack(alignment: .leading, spacing: 0.0){
                
                Text("Dive deeper into yourself!")
               
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible(minimum: 150, maximum: 200)), GridItem(.flexible(minimum: 150, maximum: 200))]){
                        VStack(alignment: .leading){
                            Image(systemName: "heart")
                            Text("Name")
                            Text("Description")
                                .font(.caption)
                        }
                        .frame(width: 180.0, height: 250.0)
                        
                        .background(Rectangle().foregroundColor(.white)).cornerRadius(20)
                        .shadow(color: .gray, radius: 5, x: 0, y: 5)
                        VStack(alignment: .leading){
                            Image(systemName: "heart")
                            Text("Name")
                            Text("Description")
                                .font(.caption)
                        }
                        .frame(width: 180.0, height: 250.0)
                        
                        .background(Rectangle().foregroundColor(.white)).cornerRadius(20)
                        .shadow(color: .gray, radius: 5, x: 0, y: 5)
                        
                        VStack(alignment: .leading){
                            Image(systemName: "heart")
                            Text("Name")
                            Text("Description")
                                .font(.caption)
                        }
                        .frame(width: 180.0, height: 250.0)
                        
                        .background(Rectangle().foregroundColor(.white)).cornerRadius(20)
                        .shadow(color: .gray, radius: 5, x: 0, y: 5)
                        
                        VStack(alignment: .leading){
                            Image(systemName: "heart")
                            Text("Name")
                            Text("Description")
                                .font(.caption)
                        }
                        .frame(width: 180.0, height: 250.0)
                        
                        .background(Rectangle().foregroundColor(.white)).cornerRadius(20)
                        .shadow(color: .gray, radius: 5, x: 0, y: 5)
                        
                        
                    }.padding(10)
                }
                
                
            }
            .navigationTitle("Quizzes").lineLimit(.max)
            .navigationBarTitleDisplayMode(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
            
            
            
            
        }
       
    }
}

#Preview {
    quizzesPage()
}
