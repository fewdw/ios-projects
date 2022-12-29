//
//  HypeEventTileView.swift
//  Hyped
//
//  Created by Frederic Lefebvre on 2022-10-18.
//

import SwiftUI

struct HypeEventTileView: View {
    
    var hypeEvent:HypeEvent
    
    var body: some View {
        
        VStack (spacing:0){
                
            if hypeEvent.image() != nil{
                hypeEvent.image()!
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            Rectangle()
                .foregroundColor(hypeEvent.color)
                .frame(height:15)
               HStack{
                Text(hypeEvent.title)
                    .font(.title)
                    .padding(10)
                Spacer()
            }
               .background(Color.white)
            HStack{
                Image(systemName: "calendar")
                foregroundColor(.red)
                Text(hypeEvent.dateAsString())
                Spacer()
                Text(hypeEvent.timeFromNow())
                Image(systemName: "blockfill")
                    .foregroundColor(.blue)
            }
            .padding(.horizontal,10)
            .padding(.bottom, 10)
            .font(.title3)
            .background(Color.white)
            
        }
        .cornerRadius(10)
        .shadow(radius: 10)
        
        
    }
}

struct HypeEventTileView_Previews: PreviewProvider {
    static var previews: some View {
        HypeEventTileView(hypeEvent: testHypeEvent1)
            .previewLayout(.sizeThatFits)
    }
}
