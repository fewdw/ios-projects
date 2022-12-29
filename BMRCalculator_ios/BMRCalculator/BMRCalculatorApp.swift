//
//  BMRCalculatorApp.swift
//  BMRCalculator
//
//  Created by macuser on 2022-09-09.
//

import SwiftUI

@main
struct BMRCalculatorApp: App {
    
    @StateObject var calculator: Calculator = Calculator()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(calculator)
        }
    }
}
