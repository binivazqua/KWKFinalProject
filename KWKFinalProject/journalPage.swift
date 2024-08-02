//
//  ContentView.swift
//  journal
//
//  Created by Shriya Iyangar on 7/30/24.
//

import SwiftUI

struct journalPage: View {
    let bgColor = Color(red: 0.9686274509803922, green: 0.9294117647058824, blue: 0.8862745098039215)
    let coral = Color(red: 0.9490196078431372, green: 0.5176470588235295, blue: 0.5098039215686274)
    let buttonColor = Color(red: 1, green: 0.35294117647058826, blue: 0.4117647058823529)
    let lightPink = Color(red: 1, green: 0.9333333333333333, blue: 0.9215686274509803)
    
    @State private var journalText: String = ""
    @State private var savedEntries: [String] = []
    
    var body: some View {
        NavigationStack {
            ZStack{
                bgColor.edgesIgnoringSafeArea(.all)
                VStack {
                    ScrollView {
                        VStack {
                            AsyncImage(url: URL(string: "https://snacknation.com/wp-content/uploads/2021/12/Best-Positive-Affirmations-For-Work-e1638481307317.png")) { phase in
                                if let image = phase.image {
                                    image
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 350, height: 240)
                                        .border(coral, width: 4)
                                        .padding(.horizontal, 10)
                                } else {
                                    ProgressView()
                                }
                                Spacer()
                                    .frame(height: 50)
                            }
                            
                            Text("How are you feeling today? Jot down any thoughts 😌")
                                
                                .multilineTextAlignment(.center)
                                .lineLimit(nil)
                            
                            ZStack(alignment: .topLeading) {
                                    TextEditor(text: $journalText)
                                    .frame(width: 300.0, height: 150)
                                        .padding()
                                        .scrollContentBackground(.hidden)
                                        .background(lightPink)
                                        .cornerRadius(10)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(coral, lineWidth: 2))
                                        .shadow(radius: 5)
                        
                                if journalText.isEmpty {
                                    Text("Start writing here ...")
                                        .font(.system(size: 21))
                                        .foregroundColor(.gray)
                                        .padding()
                                        .allowsHitTesting(false)
                                }
                            }
                            
                            Button(action: {
                                if !journalText.isEmpty {
                                    savedEntries.append(journalText)
                                    journalText = ""
                                }
                            }) {
                                Text("Save")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .font(.system(size: 21))
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(buttonColor)
                                    .cornerRadius(10)
                                    .shadow(radius: 5)
                            }
                            .padding(20.0)
                            
                            Text("Scroll to view past entries!")
                                .font(.system(size: 21))
                                .multilineTextAlignment(.leading)
                            
                            VStack(alignment: .leading, spacing: 10) {
                                ForEach(savedEntries.indices, id: \.self) { index in
                                    HStack {
                                        Text(savedEntries[index])
                                            .padding()
                                            .background(lightPink)
                                            .cornerRadius(10)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 10)
                                                    .stroke(Color.black, lineWidth: 2))
                                            .shadow(radius: 5)
                                        
                                        Button(action: {
                                            savedEntries.remove(at: index)
                                        }) {
                                            Image(systemName: "trash")
                                                .foregroundColor(buttonColor)
                                                .padding()
                                        }
                                    }
                                }
                                .padding()
                            }
                        }
                    }.padding()
                    .frame(maxHeight: .infinity)
                }
                .padding()
                .navigationTitle("Journal 📝 ")
            }
        }
    }
}

#Preview {
    journalPage()
}

