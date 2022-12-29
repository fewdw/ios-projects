//
//  ContentView.swift
//  Todo-Demo
//
//  Created by macuser on 2022-11-01.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewmodel = TodoViewModel()
    @State var title: String = ""
    @State var notes: String = ""
    
    var body: some View {
        VStack {
            List(viewmodel.todoList) { item in
                HStack {
                    Text(item.title)
                    Spacer()
                    Button(action: {
                        viewmodel.toBeUpdatedTodo = item
                        title = item.title
                        notes = item.notes
                    }, label: {
                        Image(systemName: "pencil")
                    })
                    .accessibilityIdentifier("ListItemEditButton")
                    .buttonStyle(BorderlessButtonStyle())
                    
                    Button(action: {
                        viewmodel.deleteTodo(todo: item)
                    }, label: {
                        Image(systemName: "trash")
                    })
                    .accessibilityIdentifier("ListItemDeleteButton")
                }
            }
        }
        
        Divider()
        
        VStack(spacing: 5) {
            TextField("Enter a title", text: $title)
                .accessibilityIdentifier("EnterTitleTextField")
            TextField("Enter notes", text: $notes)
                .accessibilityIdentifier("EnterNotesTextField")
        }
        
        Button(action: {
            viewmodel.tobeAddedTodo.title = title
            viewmodel.tobeAddedTodo.notes = notes
            viewmodel.addTodo()
            
            title = ""
            notes = ""
            
        }, label: {
            Text("Add Todo Item")
        })
        .accessibilityIdentifier("AddTodoItemButton")
        
        
        Button(action: {
            viewmodel.toBeUpdatedTodo.title = title
            viewmodel.toBeUpdatedTodo.notes = notes
            
            viewmodel.updateTodo()
            
            title = ""
            notes = ""
            
        }, label: {
            Text("Update Todo Item")
        })
        .buttonStyle(BorderedButtonStyle())
        .accessibilityIdentifier("EditTodoItemButton")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
