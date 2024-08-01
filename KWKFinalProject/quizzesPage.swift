//
//  quizzesPage.swift
//  KWKFinalProject
//
//  Created by Biniza Verónica Vázquez Moreno on 30/07/24.

import SwiftUI
import SafariServices

struct quizzesPage: View {
    let offWhite = Color(red: 0.9686274509803922, green: 0.9294117647058824, blue: 0.8862745098039215)
    let coral = Color(red: 0.9490196078431372, green: 0.5176470588235295, blue: 0.5098039215686274)
    let lightPink = Color(red: 1, green: 0.9333333333333333, blue: 0.9215686274509803)
    let yellow2 = Color(red: 0.9647058823529412, green: 0.7411764705882353, blue: 0.3764705882352941)
    let blueGray = Color(red: 0.5176470588235295, green: 0.6470588235294118, blue: 0.615686274509804)
    let pastelGreen = Color(red: 0.7098039215686275, green: 0.8235294117647058, blue: 0.5450980392156862)
   
    var body: some View {
        NavigationStack{
            ZStack{
                offWhite.edgesIgnoringSafeArea(.all)
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
                                    .background(Rectangle().foregroundColor(lightPink)).cornerRadius(10)
                                
                                Spacer()
                            }
                            .frame(width: 180.0, height: 300.0)
                            .background(Rectangle().foregroundColor(pastelGreen).opacity(0.8))
                            .cornerRadius(20)
                            .shadow(color: .gray, radius: 5, x: 0, y: 5)
                            .padding()
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
                                    .background(Rectangle().foregroundColor(lightPink)).cornerRadius(10)
                                
                                Spacer()
                            }
                            .frame(width: 180.0, height: 300.0)
                            .background(Rectangle().foregroundColor(yellow2))
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
                                    .background(Rectangle().foregroundColor(lightPink)).cornerRadius(10)
                                
                                Spacer()
                            }
                            .frame(width: 180.0, height: 300.0)
                            .background(Rectangle().foregroundColor(blueGray))
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
                                    .background(Rectangle().foregroundColor(lightPink)).cornerRadius(10)
                                
                                Spacer()
                            }
                            .frame(width: 180.0, height: 300.0)
                            .background(Rectangle().foregroundColor(coral))
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
}

#Preview {
    quizzesPage()
}

