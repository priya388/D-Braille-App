//
//  D_BrailleApp.swift
//  D-Braille
//
//
//

import SwiftUI

import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

@main
struct D_BrailleApp: App {
    // @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            Home()          }
    }
}
