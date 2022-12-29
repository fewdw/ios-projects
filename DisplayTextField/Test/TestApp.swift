//
//  TestApp.swift
//  Test
//
//  Created by Frederic Lefebvre on 2022-10-21.
//

import SwiftUI

@main
struct TestApp: App {
    @StateObject var username: Username = Username()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(username)
        }
    }
}
