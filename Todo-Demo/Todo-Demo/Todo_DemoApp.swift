//
//  Todo_DemoApp.swift
//  Todo-Demo
//
//  Created by macuser on 2022-11-01.
//

import SwiftUI
import Firebase

@main
struct Todo_DemoApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
