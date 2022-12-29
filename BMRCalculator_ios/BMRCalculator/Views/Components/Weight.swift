//
//  Weight.swift
//  BMRCalculator
//
//  Created by macuser on 2022-09-09.
//

import SwiftUI

struct Weight: View {
    
    @EnvironmentObject var calculator: Calculator
    
    var body: some View {
        
        ZStack{
            CardBackground()
            VStack{
                Card(titleCard: "Weight", captionCard: "Enter your weight (kg)")
                
                SliderValue(value: calculator.weight)
                
                Slider(value: $calculator.weight, in: 5...200, step:1.0)
                    .frame(width: 200)
            }
            }.frame(width: 300, height: 500)
        

    }
}

struct Weight_Previews: PreviewProvider {
    static var previews: some View {
        Weight()
    }
}
