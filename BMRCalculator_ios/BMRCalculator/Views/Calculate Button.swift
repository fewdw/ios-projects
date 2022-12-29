//
//  Calculate Button.swift
//  BMRCalculator
//
//  Created by macuser on 2022-09-16.
//

import SwiftUI

struct Calculate_Button: View {
    @Binding var index:Int
    @EnvironmentObject var calculator: Calculator
    
    var body: some View {
        Text("calculate")
            .font(.caption2)
            .fontWeight(.bold)
            .padding(.all,8)
            .foregroundColor(Color(.white))
            .background(Color(.systemBlue))
            .cornerRadius(20)
            .frame(height:100)
            .padding(.top,50)
            .onTapGesture{
                calculator.calculateBMR()
                moveToNextCard()
            }
    }
    
    func moveToNextCard(){
        withAnimation{
            if(index <= 4){
                index += 1
            }else{
                index = 0
            }
        }
    }
}
/*
 struct Calculate_Button_Previews: PreviewProvider {
 static var previews: some View {
 Calculate_Button()
 }
 }*/
