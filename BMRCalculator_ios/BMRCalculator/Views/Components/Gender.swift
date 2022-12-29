//
//  Gender.swift
//  BMRCalculator
//
//  Created by macuser on 2022-09-09.
//

import SwiftUI

struct Gender: View {

    @EnvironmentObject var calculator: Calculator
    
    var body: some View {
        ZStack{
            CardBackground()
        VStack{
            Card(titleCard: "Gender", captionCard: "Select Your Gender")
            
            Picker("Gender", selection: $calculator.gender){
                Text("Male").tag(GenderE.male)
                Text("Female").tag(GenderE.female)
            }.pickerStyle(.segmented)
                .frame(width: 150)
            
        }
            
        }.frame(width: 300, height: 500)
    }
}

struct Gender_Previews: PreviewProvider {
    static var previews: some View {
        Gender()
    }
}
