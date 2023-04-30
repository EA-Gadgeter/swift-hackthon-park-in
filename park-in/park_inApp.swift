//
//  park_inApp.swift
//  park-in
//
//  Created by iOS Lab on 29/04/23.
//

import SwiftUI
import FirebaseCore

@main
struct park_inApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
                MainView()
        }
    }
}
