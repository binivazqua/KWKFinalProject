//
//  quizzesPage.swift
//  KWKFinalProject
//
//  Created by Biniza Verónica Vázquez Moreno on 30/07/24.
//

import SwiftUI

struct quizzesPage: View {
    var body: some View {
        NavigationStack{
            VStack{
                
            }
            .navigationTitle("Quiz")
            .navigationBarTitleDisplayMode(/*@START_MENU_TOKEN@*/.automatic/*@END_MENU_TOKEN@*/)
            Link("hi", destination: URL(string: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-open-web-links-in-safari")!)
        }
       
    }
}

#Preview {
    quizzesPage()
}
