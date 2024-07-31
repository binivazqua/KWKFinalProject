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
                
                Text("Dive deeper into yourself!").padding([.leading, .bottom])
               
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible(minimum: 150, maximum: 200)), GridItem(.flexible(minimum: 150, maximum: 200))]){
                        
                        // +++++ VSTACK ++++++ //
                        VStack(alignment: .center) {
                            
                            Image("mbti_square")
                            
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150.0, height: 150.0)
                            .cornerRadius(20)
                            .padding(.top, 10.0)
                            
                            VStack(alignment: .leading){
                                HStack {
                                Text("MBTI Personality")
                                Image(systemName: "heart")
                                }
                                    
                                                
                                Text("Be yourself and answer honestly.")
                                 .font(.caption)
                            }.padding(.horizontal, 10)
                            
                        
                        
                            Link("Take Quiz", destination: URL(string: "https://www.16personalities.com/free-personality-test")!)
                                .frame(width: 100.0, height: 20.0)
                                .padding(10.0)
                                .font(.subheadline).foregroundColor(.black)
                                .background(Rectangle().foregroundColor(.green)).cornerRadius(10)
                            
                        Spacer()
                        }
                          .frame(width: 180.0, height: 300.0)
                          .background(Rectangle().foregroundColor(.white))
                            .cornerRadius(20)
                            .shadow(color: .gray, radius: 5, x: 0, y: 5)
                        
                        // +++++++++ V STACK ++++++++++++ //
                        
                        // +++++ VSTACK ++++++ //
                        VStack(alignment: .center) {
                            
                            Image("mbti_square")
                            
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150.0, height: 150.0)
                            .cornerRadius(20)
                            .padding(.top, 10.0)
                            
                            VStack(alignment: .leading){
                                HStack {
                                Text("MBTI Personality")
                                Image(systemName: "heart")
                                }
                                    
                                                
                                Text("Be yourself and answer honestly.")
                                 .font(.caption)
                            }.padding(.horizontal, 10)
                            
                        
                        
                            Link("Take Quiz", destination: URL(string: "https://www.16personalities.com/free-personality-test")!)
                                .frame(width: 100.0, height: 20.0)
                                .padding(10.0)
                                .font(.subheadline).foregroundColor(.black)
                                .background(Rectangle().foregroundColor(.green)).cornerRadius(10)
                            
                        Spacer()
                        }
                          .frame(width: 180.0, height: 300.0)
                          .background(Rectangle().foregroundColor(.white))
                            .cornerRadius(20)
                            .shadow(color: .gray, radius: 5, x: 0, y: 5)
                        
                        // +++++++++ V STACK ++++++++++++ //
                        
                        // +++++ VSTACK ++++++ //
                        VStack(alignment: .center) {
                            
                            Image("mbti_square")
                            
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150.0, height: 150.0)
                            .cornerRadius(20)
                            .padding(.top, 10.0)
                            
                            VStack(alignment: .leading){
                                HStack {
                                Text("MBTI Personality")
                                Image(systemName: "heart")
                                }
                                    
                                                
                                Text("Be yourself and answer honestly.")
                                 .font(.caption)
                            }.padding(.horizontal, 10)
                            
                        
                        
                            Link("Take Quiz", destination: URL(string: "https://www.16personalities.com/free-personality-test")!)
                                .frame(width: 100.0, height: 20.0)
                                .padding(10.0)
                                .font(.subheadline).foregroundColor(.black)
                                .background(Rectangle().foregroundColor(.green)).cornerRadius(10)
                            
                        Spacer()
                        }
                          .frame(width: 180.0, height: 300.0)
                          .background(Rectangle().foregroundColor(.white))
                            .cornerRadius(20)
                            .shadow(color: .gray, radius: 5, x: 0, y: 5)
                        
                        // +++++++++ V STACK ++++++++++++ //
                        
                        // +++++ VSTACK ++++++ //
                        VStack(alignment: .center) {
                            
                            Image("mbti_square")
                            
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150.0, height: 150.0)
                            .cornerRadius(20)
                            .padding(.top, 10.0)
                            
                            VStack(alignment: .leading){
                                HStack {
                                Text("MBTI Personality")
                                Image(systemName: "heart")
                                }
                                    
                                                
                                Text("Be yourself and answer honestly.")
                                 .font(.caption)
                            }.padding(.horizontal, 10)
                            
                        
                        
                            Link("Take Quiz", destination: URL(string: "https://www.16personalities.com/free-personality-test")!)
                                .frame(width: 100.0, height: 20.0)
                                .padding(10.0)
                                .font(.subheadline).foregroundColor(.black)
                                .background(Rectangle().foregroundColor(.green)).cornerRadius(10)
                            
                        Spacer()
                        }
                          .frame(width: 180.0, height: 300.0)
                          .background(Rectangle().foregroundColor(.white))
                            .cornerRadius(20)
                            .shadow(color: .gray, radius: 5, x: 0, y: 5)
                        
                        // +++++++++ V STACK ++++++++++++ //
                        
                       
                        
                        
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
