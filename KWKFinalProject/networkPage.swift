//
//  networkPage.swift
//  KWKFinalProject
//
//  Created by Biniza Verónica Vázquez Moreno on 30/07/24.
//

import SwiftUI

struct NetworkPage: View {
    @ObservedObject var userProfile: UserProfile
    
    // COLORS:
    
    let offWhite = Color(red: 0.9686274509803922, green: 0.9294117647058824, blue: 0.8862745098039215)
    let coral = Color(red: 0.9490196078431372, green: 0.5176470588235295, blue: 0.5098039215686274)
    let lightPink = Color(red: 1, green: 0.9333333333333333, blue: 0.9215686274509803)
    let yellow2 = Color(red: 0.9647058823529412, green: 0.7411764705882353, blue: 0.3764705882352941)
    let blueGray = Color(red: 0.5176470588235295, green: 0.6470588235294118, blue: 0.615686274509804)
    let pastelGreen = Color(red: 0.7098039215686275, green: 0.8235294117647058, blue: 0.5450980392156862)
    
    var body: some View {
        
        NavigationStack{
            VStack(alignment: .center) {
                
                VStack(alignment: .center) {
                    Image("user-line")
                    Text("Username")
                }.padding(.vertical, 10)
                
                ScrollView{
                    LazyVGrid(columns: [GridItem(.flexible(minimum: 150, maximum: 200)), GridItem(.flexible(minimum: 150, maximum: 200))]){
                        
                        VStack{
                            Text("Pronouns:").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text(userProfile.pronouns)
                        }
                        .frame(width: 160.0, height: 100.0)
                        .background(Rectangle().foregroundColor(pastelGreen).opacity(0.8))
                            .cornerRadius(20)
                            .shadow(color: .gray, radius: 5, x: 0, y: 5)
                            .padding(.top,5)
                        
                        VStack{
                            Text("Age:").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text(userProfile.age)
                        }
                        .frame(width: 160.0, height: 100.0)
                        .background(Rectangle().foregroundColor(pastelGreen).opacity(0.8))
                            .cornerRadius(20)
                            .shadow(color: .gray, radius: 5, x: 0, y: 5)
                            .padding(.top,5)
                        
                        VStack{
                            Text("I am...").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text(userProfile.descriptiveWord)
                            
                        }
                        .frame(width: 160.0, height: 100.0)
                        .background(Rectangle().foregroundColor(pastelGreen).opacity(0.8))
                            .cornerRadius(20)
                            .shadow(color: .gray, radius: 5, x: 0, y: 5)
                            .padding(5)
                        VStack{
                            Text("I love to...").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text(userProfile.passions)
                        }
                        .frame(width: 160.0, height: 100.0)
                        .background(Rectangle().foregroundColor(pastelGreen).opacity(0.8))
                            .cornerRadius(20)
                            .shadow(color: .gray, radius: 5, x: 0, y: 5)
                            .padding(.top, 5)
                        
                        VStack{
                            Text("I am good at...").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text(userProfile.talents)
                        }
                        .frame(width: 160.0, height: 100.0)
                        .background(Rectangle().foregroundColor(pastelGreen).opacity(0.8))
                            .cornerRadius(20)
                            .shadow(color: .gray, radius: 5, x: 0, y: 5)
                            .padding(5)
                        VStack{
                            Text("My MBTI:").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text(userProfile.mbti)
                        }
                        .frame(width: 160.0, height: 100.0)
                        .background(Rectangle().foregroundColor(pastelGreen).opacity(0.8))
                            .cornerRadius(20)
                            .shadow(color: .gray, radius: 5, x: 0, y: 5)
                            .padding(.top, 5)
                        VStack{
                            Text("Mission:").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text(userProfile.mission)
                        }
                        .frame(width: 160.0, height: 100.0)
                        .background(Rectangle().foregroundColor(pastelGreen).opacity(0.8))
                            .cornerRadius(20)
                            .shadow(color: .gray, radius: 5, x: 0, y: 5)
                            .padding(.top, 5)
                        VStack{
                            Text("Vision:").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text(userProfile.vision)
                        }
                        .frame(width: 160.0, height: 100.0)
                        .background(Rectangle().foregroundColor(pastelGreen).opacity(0.8))
                            .cornerRadius(20)
                            .shadow(color: .gray, radius: 5, x: 0, y: 5)
                            .padding(.top, 5)
                        
                    }
                }.padding()
            }.frame(width: 400, height: 390)
            
            ScrollView{
                // ADD CONTACT CONTAINER:
                VStack(alignment: .leading){
                    // ADD CONTACT CONTAINER:
                    Text("My network").font(.title3).padding(.leading, 25.0)
                    
                    HStack(alignment: .top){
                        Image("user-line").padding()
                        
                        VStack{
                            HStack{
                                VStack{}
                                Text("Username")
                                Text("pronouns").font(/*@START_MENU_TOKEN@*/.footnote/*@END_MENU_TOKEN@*/).fontWeight(.light)
                                Text("age").font(/*@START_MENU_TOKEN@*/.footnote/*@END_MENU_TOKEN@*/).fontWeight(.light)
                                Text("MBTI").font(/*@START_MENU_TOKEN@*/.footnote/*@END_MENU_TOKEN@*/).fontWeight(.bold).padding(.leading, 20)
                                
                                Spacer()

                            }.padding(.vertical)
                            VStack(alignment: .leading){
                                Text("Passions:")
                                Text("Talents:")
                                
                                Spacer().frame(width: 260)
                                    
                            }
                            
                            
                           
                        }
                    }
                    .frame(height: 150.0)
                    .background(Rectangle().foregroundColor(pastelGreen).opacity(0.8))
                        .cornerRadius(20)
                        .shadow(color: .gray, radius: 5, x: 0, y: 5)
                        .padding(.horizontal, 20)
            }
            
                
                
                
                
            }
                
        }
        
    }
}

#Preview {
    NetworkPage(userProfile: UserProfile())
}


