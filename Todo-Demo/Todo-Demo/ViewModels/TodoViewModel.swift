//
//  TodoViewModel.swift
//  Todo-Demo
//
//  Created by macuser on 2022-11-01.
//

import Combine

class TodoViewModel: ObservableObject {
    @Published var todoRepo = TodoRepository.shared
    @Published var todoList = [Todo]()
    @Published var toBeUpdatedTodo = Todo()
    @Published var tobeAddedTodo = Todo()
    
    private var cancellables: Set<AnyCancellable> = []
    
    init() {
        self.todoRepo.$list //accces publisher that gives us an array of todos
            .assign(to: \.todoList, on: self) //subscribes to publsiher using key-path notation
            .store(in: &cancellables) //stores it in the set of cancellable
    }
    
    func addTodo() {
        self.todoRepo.add(tobeAddedTodo)
    }
    func deleteTodo(todo: Todo) {
        self.todoRepo.delete(todo)
    }
    func updateTodo() {
        self.todoRepo.update(toBeUpdatedTodo)
    }
    
}
