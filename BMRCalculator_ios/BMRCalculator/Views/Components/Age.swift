//
//  Age.swift
//  BMRCalculator
//
//  Created by macuser on 2022-09-09.
//

import SwiftUI

struct Age: View {
    
    @EnvironmentObject var calculator: Calculator
    
    var body: some View {
        ZStack{
            CardBackground()
            VStack{
                
                Card(titleCard: "Age", captionCard: "Enter your age")
                
                SliderValue(value: calculator.age)
                
                Slider(value: $calculator.age, in: 15...80, step:1.0)
                    .frame(width: 150)
                
            }
        }.frame(width: 300, height: 500)

    }
}

struct Age_Previews: PreviewProvider {
    static var previews: some View {
        Age()
    }
}
