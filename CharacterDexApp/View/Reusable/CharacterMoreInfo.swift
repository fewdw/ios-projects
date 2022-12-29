//
//  CharacterMoreInfo.swift
//  CharacterDexApp
//
//  Created by Frederic Lefebvre on 2022-11-07.
//

import SwiftUI

struct CharacterMoreInfo: View {
    
    var character: Character
    
    var body: some View {
        
        VStack{
            Text("\(character.name)")
                .font(.title)
            AsyncImage(url: URL(string: character.image)){image in image
                    .resizable()
                    .frame(width: 300,height:300)
                    .cornerRadius(50)
            } placeholder: {
                ProgressView()
            }
            Divider()
                .frame(width: 300)
                .padding(30)
            VStack(alignment: .leading, spacing: 20){
                
                HStack{
                    Text("\(character.species),")
                    Text("\(character.gender)")
                }
                .font(.title2)
                
                if(character.status == "Alive"){
                    HStack{
                        Text("Status:")
                        Text("\(character.status)")
                            .foregroundColor(.green)
                    }
                    .font(.title2)
                }
                if(character.status == "Dead"){
                    HStack{
                        Text("Status:")
                        Text("\(character.status)")
                            .foregroundColor(.red)
                    }
                    .font(.title2)
                }
                if(!(character.status == "Dead" || character.status == "Alive")){
                    HStack{
                        Text("Status:")
                        Text("UNKNOWN")
                            .foregroundColor(.blue)
                    }
                    .font(.title2)
                }
                
                Text("Created: \(character.created)")
                    .font(.footnote)
            }
        }
        Spacer()
    }
}


