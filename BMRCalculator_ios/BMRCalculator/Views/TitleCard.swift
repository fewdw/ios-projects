//
//  TitleCard.swift
//  BMRCalculator
//
//  Created by macuser on 2022-09-09.
//

import SwiftUI

struct TitleCard: View {
    var body: some View {
        ZStack{
                CardBackground()
            VStack{
                
                Card(titleCard: "BMI Calculator", captionCard: "for a better living")
            }
        }.frame(width: 300, height: 500)
    }
}

struct TitleCard_Previews: PreviewProvider {
    static var previews: some View {
        TitleCard()
    }
}
