//
//  KWKFinalProjectApp.swift
//  KWKFinalProject
//
//  Created by Biniza Verónica Vázquez Moreno on 26/07/24.
//

import SwiftUI

@main
struct KWKFinalProjectApp: App {
    
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            
            ContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
