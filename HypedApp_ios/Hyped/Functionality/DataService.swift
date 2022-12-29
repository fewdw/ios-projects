//
//  DataService.swift
//  Hyped
//
//  Created by Frederic Lefebvre on 2022-10-25.
//

import SwiftUI

class DataService: ObservableObject{
    
    static var shared = DataService()
    
    @Published var hypeEvents:[HypeEvent] = []
}
