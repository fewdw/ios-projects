//
//  Calculator.swift
//  BMRCalculator
//
//  Created by macuser on 2022-09-13.
//

import Foundation

class Calculator: ObservableObject{
    @Published var gender: GenderE = GenderE.female
    
    @Published var age: Double = 30
    
    @Published var height: Double = 170
    
    @Published var weight: Double = 60
    
    @Published var resultBMR: Double = 0
    
    func calculateBMR(){
        
        switch gender{
        case .male:
            resultBMR = (10 * weight) + (6.25 * height)
            - (5 * age) + 5
        case .female:
            resultBMR = (10 * weight) + (6.25 * height)
            - (5 * age) + 161
            
        }
        
        print("bmr calculated \(resultBMR)")

    }
    
}

