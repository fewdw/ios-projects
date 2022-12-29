//
//  Character.swift
//  CharacterDexApp
//
//  Created by Frederic Lefebvre on 2022-11-04.
//

import Foundation

struct Character: Codable, Identifiable{
    
    //init(){}
    
    let id: Int
    let name: String
    let status: String
    let species: String
    let gender: String
    let image: String
    let created: String
}


