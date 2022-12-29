//
//  Card.swift
//  BMRCalculator
//
//  Created by macuser on 2022-09-09.
//

import SwiftUI

struct Card: View {
    
    var titleCard:String
    var captionCard:String
    
    var body: some View {

                Text(titleCard)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(.systemBlue))
                    .padding(.bottom,10)
                
                Text(captionCard)
                    .font(.caption)
                    .foregroundColor(Color(.systemGray))


    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(titleCard: "", captionCard: "")
    }
}
