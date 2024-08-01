//
//  userDataClass.swift
//  KWKFinalProject
//
//  Created by Biniza Verónica Vázquez Moreno on 01/08/24.
//

import Foundation
import Combine

class UserProfile: ObservableObject {
    @Published var pronouns: String
    @Published var age: String
    @Published var descriptiveWord: String
    @Published var passions: String
    @Published var talents: String
    @Published var mbti: String
    @Published var mission: String
    @Published var vision: String
    
    init(pronouns: String = "", age: String = "", descriptiveWord: String = "", passions: String = "", talents: String = "", mbti: String = "", mission: String = "", vision: String = "") {
        self.pronouns = pronouns
        self.age = age
        self.descriptiveWord = descriptiveWord
        self.passions = passions
        self.talents = talents
        self.mbti = mbti
        self.mission = mission
        self.vision = vision
    }
}




