//
//  Result.swift
//  BMRCalculator
//
//  Created by macuser on 2022-09-09.
//

import SwiftUI

struct Result: View {
    
    @EnvironmentObject var calculator: Calculator

    var body: some View {
        
        ZStack{
            CardBackground()
            
            VStack{
                Card(titleCard: "Result", captionCard: "Your Basal Metabolic Rate is")
                
                Text(String(format:"%0.0f", calculator.resultBMR))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(.systemBlue))
                    .padding(.top,20)

                Text("calories / day")
                    .font(.caption)
                    .padding(.top,20)
                    .foregroundColor(Color(.systemGray))
                
            }
        }.frame(width: 300, height: 500)
        
        
    }
}

struct Result_Previews: PreviewProvider {
    static var previews: some View {
        Result()
    }
}
