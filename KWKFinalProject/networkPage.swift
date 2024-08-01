//
//  networkPage.swift
//  KWKFinalProject
//
//  Created by Biniza Verónica Vázquez Moreno on 30/07/24.
//

import SwiftUI

struct NetworkPage: View {
    @ObservedObject var userProfile: UserProfile
    
    var body: some View {
        VStack {
            Text("Pronouns: \(userProfile.pronouns)")
            Text("Age: \(userProfile.age)")
            Text("Descriptive Word: \(userProfile.descriptiveWord)")
            Text("Passions: \(userProfile.passions)")
            Text("Talents: \(userProfile.talents)")
            Text("MBTI: \(userProfile.mbti)")
            Text("Mission: \(userProfile.mission)")
            Text("Vision: \(userProfile.vision)")
        }
    }
}

#Preview {
    NetworkPage(userProfile: UserProfile())
}


