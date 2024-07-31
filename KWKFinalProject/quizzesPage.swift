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
                
                /*
                Text("Dive deeper into yourself!")
                    .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/).position(CGPoint(x: 140.0, y: 10.0))*/
                
                // FIRST TWO QUIZZES
                
                /*
                Link("Go to test", destination: URL(string: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-open-web-links-in-safari")!)
                    .ignoresSafeArea()
                    .padding()
                    .foregroundColor(.white)
                    .background(Color(.green))
                    .cornerRadius(10).fontWeight(.bold)*/
                
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]){
                    VStack{
                        Image(systemName: "heart")
                        Text("Name")
                        Text("Name")
                    }
                    .padding()
                    .background(Rectangle().foregroundColor(.white)).cornerRadius(20).shadow(radius: 20)
                    VStack{
                        Image(systemName: "heart")
                        Text("Name")
                        Text("Name")
                    }
                    .padding()
                    .background(Rectangle().foregroundColor(.white)).cornerRadius(20).shadow(radius: 20)
                    
                    
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
