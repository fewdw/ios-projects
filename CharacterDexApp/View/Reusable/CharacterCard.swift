//
//  CharacterCard.swift
//  CharacterDexApp
//
//  Created by Frederic Lefebvre on 2022-11-07.
//

import SwiftUI

struct CharacterCard: View {
    
    var name: String = "Abadango Cluster Princess"
    var image: String = "https://rickandmortyapi.com/api/character/avatar/1.jpeg"
    
    var body: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .fill(.black)
                .frame(width: 120, height: 160)
            VStack{
                Text(name)
                    .frame(width: 120)
                AsyncImage(url: URL(string: image)){image in image
                        .resizable()
                        .frame(width: 70,height:70)
                } placeholder: {
                    ProgressView()
                }
            }
            .foregroundColor(.white)
        }.padding(3)
    

    }
}

struct CharacterCard_Previews: PreviewProvider {
    static var previews: some View {
        CharacterCard(name: "Abadango Cluster Princess", image: "https://rickandmortyapi.com/api/character/avatar/1.jpeg" )
    }
}
