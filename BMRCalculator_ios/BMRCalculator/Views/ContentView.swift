//
//  ContentView.swift
//  BMRCalculator
//
//  Created by macuser on 2022-09-09.
//

import SwiftUI

struct ContentView: View {
    
    @State var activateCardIndex:Int = 0
    @EnvironmentObject var calculator: Calculator
    
    var body: some View {
        VStack{
            Spacer()
            
            switch activateCardIndex{
            case 0:
                TitleCard()
            case 1:
                Gender()
            case 2:
                Age()
            case 3:
                Height()
            case 4:
                Weight()
            case 5:
                Result()
            default:
                TitleCard()
            }
            
            if activateCardIndex == 4{
                Calculate_Button(index: $activateCardIndex)
                
            }else{
                NextButton(index: $activateCardIndex)
                
            }
            
            
        }
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
