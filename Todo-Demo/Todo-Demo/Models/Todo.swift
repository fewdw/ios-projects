//
//  Todo.swift
//  Todo-Demo
//
//  Created by macuser on 2022-11-01.
//

import FirebaseFirestoreSwift

struct Todo: Identifiable, Codable {
    
    @DocumentID var id: String?
    var title: String = ""
    var notes: String = ""
    
    init() {
        
    }
    
    init(title: String, notes: String) {
        self.title = title
        self.notes = notes
    }
}
