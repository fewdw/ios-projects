//
//  TodoRepository.swift
//  Todo-Demo
//
//  Created by macuser on 2022-11-01.
//

import FirebaseFirestore
import FirebaseFirestoreSwift

class TodoRepository: ObservableObject {
    static var shared = TodoRepository()
    
    @Published var list: [Todo] = []
    
    private let path = "todos"
    private let store = Firestore.firestore()
    
    init() {
        get()
    }
    
    func get() {
        store.collection(path).addSnapshotListener { snapshot, error in
            if let error = error {
                print(error)
                return
            }
            
            self.list = snapshot?.documents.compactMap{
                try? $0.data(as: Todo.self)
            } ?? []
        }
    }
    
    func add(_ todo: Todo) {
        do {
            _ = try store.collection(path).addDocument(from: todo)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func delete(_ todo: Todo) {
        if let documentId = todo.id {
            store.collection(path).document(documentId).delete { error in
                if let error = error {
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    func update (_ todo: Todo) {
        if let documentId = todo.id {
            do {
                try
                store.collection(path).document(documentId)
                    .setData(from: ["title": todo.title, "notes": todo.notes], merge: true)
            } catch {
                print ("Error")
            }
            
        }
    }
}
