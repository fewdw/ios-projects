//
//  CharacterViewmodel.swift
//  CharacterDexApp
//
//  Created by Frederic Lefebvre on 2022-11-04.
//

import Foundation

final class CharacterViewModel: ObservableObject{
    
    @Published var characters: [Character] = []
    
    func fetchCharacters(){
        
        let characterUrlString="https://fewdw.github.io/Data/rick.json"
        if let url = URL(string: characterUrlString){
            
            URLSession
                .shared
                .dataTask(with: url){ [weak self] data, response, error in
                    
                    DispatchQueue.main.async {
                        
                        if let error = error{
                            //handle error
                            
                        } else{
                            
                            let decoder = JSONDecoder()
                            decoder.keyDecodingStrategy = .convertFromSnakeCase
                            
                            if let data = data,
                               let characters = try? decoder.decode([Character].self, from: data){
                                //handle setting data
                                
                                self?.characters = characters
                                
                            }else{
                                //handle error
                            }
                            
                        }
                        
                    }
                }.resume()
        }
        
        
    }
}
