//
//  Height.swift
//  BMRCalculator
//
//  Created by macuser on 2022-09-09.
//

import SwiftUI

struct Height: View {
    
    @EnvironmentObject var calculator: Calculator

    
    var body: some View {
        
        ZStack{
            CardBackground()
        
        VStack{
            Card(titleCard: "Height", captionCard: "Enter your height (CM)")
        
        
            SliderValue(value: calculator.height)
            
            Slider(value: $calculator.height, in: 20...220, step:1.0)
                .frame(width: 200)
            
        }
        }.frame(width: 300, height: 500)

    }
}

struct Height_Previews: PreviewProvider {
    static var previews: some View {
        Height()
    }
}
