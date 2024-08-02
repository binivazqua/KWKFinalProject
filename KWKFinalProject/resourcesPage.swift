//
//  ContentView.swift
//  FinalResourceView
//
//  Created by Dhriti Ramesh on 8/1/24.
//

import SwiftUI

struct Resource: Identifiable {
    let id = UUID()
    let title: String
    let url: String
    let genders: [String]
    let passions: [String]
}

struct resourcesPage: View {
    @State private var isExpanded1 = false
    @State private var isExpanded2 = false
    @State private var isExpanded3 = false
    @State private var isExpanded4 = false
    @State private var isExpanded5 = false
    
    @State private var selectedGender = "All"
    @State private var selectedPassion = "All"
    
    @State private var likedResources = Set<UUID>()
    
    let genders = ["All", "Female", "Male", "Non-binary", "Other"]
    let passions = ["All", "Tech", "Science", "Art", "Lifestyle"]
    
    let coral = Color(red: 0.95, green: 0.52, blue: 0.51)
    let lightPink = Color(red: 0.96, green: 0.79, blue: 0.76)
    let offWhite = Color(red: 0.97, green: 0.93, blue: 0.89)
    let yellow = Color(red: 0.96, green: 0.74, blue: 0.38)
    let darkTeal = Color(red: 0.52, green: 0.65, blue: 0.62)
    let pickerBackgroundColor = Color(red: 0.92, green: 0.92, blue: 0.92)
    let darkBeige = Color(red: 0.73, green: 0.70, blue: 0.67)
    let darkerTeal = Color(red: 0.18, green: 0.38, blue: 0.44)
    let pickerTextColor = Color.black
    
    let resources = [
        Resource(title: "Women In Tech Podcast                    ", url: "https://podcast.womenintechshow.com/", genders: ["Female"], passions: ["Tech", "Science"]),
        Resource(title: "Career Advice for Women in STEM        ", url: "https://news.3m.com/How-to-Thrive-at-3M-Career-Advice-from-Women-in-STEM-to-Their-Younger-Selves", genders: ["Female"], passions: ["Science","Tech"]),
        Resource(title: "Computer Science Pioneers          ", url: "https://newrelic.com/blog/nerd-life/10-lgbt-computer-science-pioneers", genders: ["Female", "Non-binary"], passions: ["Tech", "Science"]),
        Resource(title: "How to Find Your Ikigai                       ", url: "https://www.forbes.com/sites/chrismyers/2018/02/23/how-to-find-your-ikigai-and-transform-your-outlook-on-life-and-business/", genders: ["Female", "Male", "Non-Binary", "Other"], passions: ["Lifestyle", "All"]),
        Resource(title: "A Guide For What to do With Your Life", url: "https://zenhabits.net/career/", genders: ["Female", "Male", "Non-Binary", "Other"], passions: ["Lifestyle", "All"]),
        Resource(title: "Women in STEM and Non-binary Tech Leaders", url: "https://example.com", genders: ["Female", "Non-binary"], passions: ["Science", "Tech"]),
        Resource(title: "The Broad Experience                     ", url: "https://www.thebroadexperience.com/", genders: ["Female"], passions: ["Tech", "Art", "Lifestyle"])
    ]
    
    let videos = [
        Resource(title: "Inspiring the Next Gen of Female Engineers", url: "https://youtu.be/FEeTLopLkEo?feature=shared", genders: ["Female"], passions: ["Tech", "Science"]),
        Resource(title: "The Hidden Women of Stem          ", url: "https://www.youtube.com/watch?v=mPohBFk6SV0", genders: ["Female"], passions: ["Tech", "Science"]),
        Resource(title: "How to Build Your Confidence           ", url: "https://youtu.be/b5ZESpOAolU", genders: ["Female", "Male", "Other", "Non-binary"], passions: ["Lifestyle"]),
        Resource(title: "3-Step Guide to Believing in Yourself                                   ", url: "https://youtu.be/zy2Zj8yIe6c?feature=shared", genders: ["Female", "Male", "Other", "Non-binary"], passions: ["Lifestyle"]),
        Resource(title: "How to Ikigai                                       ", url: "https://www.youtube.com/watch?v=pk-PcJS2QaU", genders: ["Female", "Male", "Other", "Non-binary"], passions: ["Lifestyle"]),
        Resource(title: "How to Figure Out what you Really Want", url: "https://www.youtube.com/watch?v=bRtBHF-WPpM", genders: ["Male", "Female", "Other", "Non-Binary"], passions: ["Lifestyle"]),
        Resource(title: "Art and Design Offers Careers Worth Pursuing                                 ", url: "https://www.ted.com/talks/doria_day_art_and_design_offer_careers_worth_pursuing", genders: ["Male", "Female", "Other", "Non-Binary"], passions: ["Art"])
    ]
    
    let camps = [
        Resource(title: "Kode with Klossy                                    ", url: "https://www.kodewithklossy.com/", genders: ["Female", "Non-binary", "Other"], passions: ["Tech"]),
        Resource(title: "Beaver Works MIT                                ", url: "https://beaverworks.ll.mit.edu/CMS/bw/bwsi", genders: ["Female", "Male", "Non-binary", "Other"], passions: ["Tech", "Science"]),
        Resource(title: "Beautiful Patterns                                 ", url: "https://dreamgrande.io/", genders: ["Female"], passions: ["Tech", "Lifestyle"]),
        Resource(title: "John Hopkins Center for Talented Youth                          ", url: "https://cty.jhu.edu/", genders: ["Female", "Male", "Non-binary", "Other"], passions: ["Science", "Tech", "Art"]),
        Resource(title: "Tapia Center Camps                          ", url: "https://tapiacenter.rice.edu/tapia-stem-camps", genders: ["Female", "Male", "Other", "Non-Binary"], passions: ["Science", "Tech"]),
        Resource(title: "Solvay Education                            ", url: "https://solvay-education-programme.web.cern.ch/", genders: ["Female", "Male", "Non-binary", "Other"], passions: ["Science", "Tech"])
    ]
    
    let opportunities = [
        Resource(title: "NASA Internships                                                   ", url: "https://www.nasa.gov/learning-resources/internship-programs/", genders: ["Male", "Female", "Other", "Non-binary"], passions: ["Science", "Tech", "Art"]),
        Resource(title: "First Robotics                                                   ", url: "https://firstmap.github.io/", genders: ["Female", "Male", "Other", "Non-binary"], passions: ["Science", "Tech"]),
        Resource(title: "Girls Who Code                                                  ", url: "https://www.girlswhocode.com", genders: ["Female", "Non-binary", "Other"], passions: ["Tech"]),
        Resource(title: "Women Who Tech                                                  ", url: "https://womenwhotech.org/", genders: ["Female"], passions: ["Tech"])
    ]
    
    var filteredResources: [Resource] {
        resources.filter { resource in
            (selectedGender == "All" || resource.genders.contains(selectedGender)) &&
            (selectedPassion == "All" || resource.passions.contains(selectedPassion))
        }
    }
    
    var filteredVideos: [Resource] {
        videos.filter { video in
            (selectedGender == "All" || video.genders.contains(selectedGender)) &&
            (selectedPassion == "All" || video.passions.contains(selectedPassion))
        }
    }
    
    var filteredCamps: [Resource] {
        camps.filter { camp in
            (selectedGender == "All" || camp.genders.contains(selectedGender)) &&
            (selectedPassion == "All" || camp.passions.contains(selectedPassion))
        }
    }
    
    var filteredOpportunities: [Resource] {
        opportunities.filter { opportunity in
            (selectedGender == "All" || opportunity.genders.contains(selectedGender)) &&
            (selectedPassion == "All" || opportunity.passions.contains(selectedPassion))
        }
    }
    
    var savedResources: [Resource] {
        resources.filter { likedResources.contains($0.id) } +
        videos.filter { likedResources.contains($0.id) } +
        camps.filter { likedResources.contains($0.id) } +
        opportunities.filter { likedResources.contains($0.id) }
    }
    
    let buttonWidth: CGFloat = 290
    let buttonHeight: CGFloat = 50
    let containerWidth: CGFloat = 350
    
    var body: some View {
        ZStack {
            offWhite
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack(spacing: 20) {
                    Text("Resources")
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .padding(.top, 40)
                        .bold()
                    Text("For help on your journey...")
                        .padding()
                        .foregroundColor(Color.black)
                    
                    // Filters
                    HStack(spacing: 20) {
                        VStack {
                            Text("Gender")
                                .foregroundColor(darkTeal)
                            CustomPicker(title: "Gender", selection: $selectedGender, options: genders, backgroundColor: pickerBackgroundColor, textColor: pickerTextColor)
                                .frame(width: 150, height: 50)
                        }
                        VStack {
                            Text("Interest")
                                .foregroundColor(darkTeal)
                            CustomPicker(title: "Passion", selection: $selectedPassion, options: passions, backgroundColor: pickerBackgroundColor, textColor: pickerTextColor)
                                .frame(width: 150, height: 50)
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 20) {
                        DisclosureGroup(isExpanded: $isExpanded1) {
                            ForEach(filteredResources) { resource in
                                HStack {
                                    Button(action: {
                                        if let url = URL(string: resource.url) {
                                            UIApplication.shared.open(url)
                                        }
                                    }) {
                                        Text(resource.title)
                                            .foregroundColor(.white)
                                            .padding()
                                            .background(darkBeige)
                                            .cornerRadius(10)
                                            .frame(width: buttonWidth, height: buttonHeight)
                                            .padding()
                                            .shadow(color: .gray, radius: 2)
                                    }
                                    Button(action: {
                                        if likedResources.contains(resource.id) {
                                            likedResources.remove(resource.id)
                                        } else {
                                            likedResources.insert(resource.id)
                                        }
                                    }) {
                                        Image(systemName: likedResources.contains(resource.id) ? "heart.fill" : "heart")
                                            .foregroundColor(.red)
                                    }
                                }
                            }
                        } label: {
                            Text("Articles & Podcasts")
                                .foregroundColor(.white)
                                .frame(width: buttonWidth, height: buttonHeight)
                                .background(coral)
                                .cornerRadius(10)
                        }
                        DisclosureGroup(isExpanded: $isExpanded2) {
                            ForEach(filteredVideos) { video in
                                HStack {
                                    Button(action: {
                                        if let url = URL(string: video.url) {
                                            UIApplication.shared.open(url)
                                        }
                                    }) {
                                        Text(video.title)
                                            .foregroundColor(.white)
                                            .padding()
                                            .background(darkBeige)
                                            .cornerRadius(10)
                                            .frame(width: buttonWidth, height: buttonHeight)
                                            .padding()
                                            .shadow(color: .gray, radius: 2)
                                    }
                                    Button(action: {
                                        if likedResources.contains(video.id) {
                                            likedResources.remove(video.id)
                                        } else {
                                            likedResources.insert(video.id)
                                        }
                                    }) {
                                        Image(systemName: likedResources.contains(video.id) ? "heart.fill" : "heart")
                                            .foregroundColor(.red)
                                    }
                                }
                            }
                        } label: {
                            Text("Videos")
                                .foregroundColor(.white)
                                .frame(width: buttonWidth, height: buttonHeight)
                                .background(lightPink)
                                .cornerRadius(10)
                        }
                        DisclosureGroup(isExpanded: $isExpanded3) {
                            ForEach(filteredCamps) { camp in
                                HStack {
                                    Button(action: {
                                        if let url = URL(string: camp.url) {
                                            UIApplication.shared.open(url)
                                        }
                                    }) {
                                        Text(camp.title)
                                            .foregroundColor(.white)
                                            .padding()
                                            .background(darkBeige)
                                            .cornerRadius(10)
                                            .frame(width: buttonWidth, height: buttonHeight)
                                            .padding()
                                            .shadow(color: .gray, radius: 2)
                                    }
                                    Button(action: {
                                        if likedResources.contains(camp.id) {
                                            likedResources.remove(camp.id)
                                        } else {
                                            likedResources.insert(camp.id)
                                        }
                                    }) {
                                        Image(systemName: likedResources.contains(camp.id) ? "heart.fill" : "heart")
                                            .foregroundColor(.red)
                                    }
                                }
                            }
                        } label: {
                            Text("Camps & Classes")
                                .foregroundColor(.white)
                                .frame(width: buttonWidth, height: buttonHeight)
                                .background(yellow)
                                .cornerRadius(10)
                        }
                        DisclosureGroup(isExpanded: $isExpanded4) {
                            ForEach(filteredOpportunities) { opportunity in
                                HStack {
                                    Button(action: {
                                        if let url = URL(string: opportunity.url) {
                                            UIApplication.shared.open(url)
                                        }
                                    }) {
                                        Text(opportunity.title)
                                            .foregroundColor(.white)
                                            .padding()
                                            .background(darkBeige)
                                            .cornerRadius(10)
                                            .frame(width: buttonWidth, height: buttonHeight)
                                            .padding()
                                            .shadow(color: .gray, radius: 2)
                                    }
                                    Button(action: {
                                        if likedResources.contains(opportunity.id) {
                                            likedResources.remove(opportunity.id)
                                        } else {
                                            likedResources.insert(opportunity.id)
                                        }
                                    }) {
                                        Image(systemName: likedResources.contains(opportunity.id) ? "heart.fill" : "heart")
                                            .foregroundColor(.red)
                                    }
                                }
                            }
                        } label: {
                            Text("Opportunities")
                                .foregroundColor(.white)
                                .frame(width: buttonWidth, height: buttonHeight)
                                .background(darkTeal)
                                .cornerRadius(10)
                        }
                        DisclosureGroup(isExpanded: $isExpanded5) {
                            ForEach(savedResources) { savedResource in
                                HStack {
                                    Button(action: {
                                        if let url = URL(string: savedResource.url) {
                                            UIApplication.shared.open(url)
                                        }
                                    }) {
                                        Text(savedResource.title)
                                            .foregroundColor(.white)
                                            .padding()
                                            .background(darkBeige)
                                            .cornerRadius(10)
                                            .frame(width: buttonWidth, height: buttonHeight)
                                            .padding()
                                            .shadow(color: .gray, radius: 2)
                                    }
                                    Button(action: {
                                        likedResources.remove(savedResource.id)
                                    }) {
                                        Image(systemName: "heart.fill")
                                            .foregroundColor(.red)
                                    }
                                }
                            }
                        } label: {
                            Text("Saved Resources")
                                .foregroundColor(.white)
                                .frame(width: buttonWidth, height: buttonHeight)
                                .background(darkerTeal)
                                .cornerRadius(10)
                        }
                    }
                    .frame(width: containerWidth)
                }
                .padding(.bottom, 40)
            }
        }
    }
}

struct CustomPicker: View {
    let title: String
    @Binding var selection: String
    let options: [String]
    let backgroundColor: Color
    let textColor: Color
    
    var body: some View {
        Menu {
            ForEach(options, id: \.self) { option in
                Button(action: {
                    selection = option
                }) {
                    Text(option)
                        .foregroundColor(textColor)
                }
            }
        } label: {
            HStack {
                Text(selection)
                    .foregroundColor(textColor)
                Spacer()
                Image(systemName: "chevron.down")
                    .foregroundColor(textColor)
            }
            .padding()
            .background(backgroundColor)
            .cornerRadius(10)
            .shadow(radius: 2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        resourcesPage()
    }
}

