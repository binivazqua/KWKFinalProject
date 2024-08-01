//
//  userDataClass.swift
//  KWKFinalProject
//
//  Created by Biniza Verónica Vázquez Moreno on 01/08/24.
//

import Foundation

class userProfileData : Identifiable {
    
    var name : String
    var age : Int
    var pronouns : String
    var descriptiveWord : String
    var passions : String
    var talents : String
    var mbti : String
    var vision : String
    
    init(name: String, age: Int, pronouns: String, descriptiveWord: String, passions: String, talents: String, mbti: String, vision: String) {
        self.name = name
        self.age = age
        self.pronouns = pronouns
        self.descriptiveWord = descriptiveWord
        self.passions = passions
        self.talents = talents
        self.mbti = mbti
        self.vision = vision
    }
}



