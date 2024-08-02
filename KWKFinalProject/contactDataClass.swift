//
//  contactDataClass.swift
//  KWKFinalProject
//
//  Created by Biniza Verónica Vázquez Moreno on 01/08/24.
//

import Foundation
import SwiftUI

struct Contact: Identifiable {
    var id = UUID()
    var name: String
    var descriptiveWord: String
    var igAccount: String
    var place: String
    
    init(name: String = "", descriptiveWord: String = "", igAccount: String = "", place: String = "") {
        self.name = name
        self.descriptiveWord = descriptiveWord
        self.igAccount = igAccount
        self.place = place
    }
}

