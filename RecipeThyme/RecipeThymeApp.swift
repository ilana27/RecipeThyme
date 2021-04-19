//
//  RecipeThymeApp.swift
//  RecipeThyme
//
//  Created by Ilana Nguyen on 3/25/21.
//

import SwiftUI
import Firebase

@main
struct RecipeThymeApp: App {
    init() {
           FirebaseApp.configure()
       }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    
}
