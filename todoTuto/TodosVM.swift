//
//  TodosVM.swift
//  todoTuto
//
//  Created by WonDongHyun on 2023/01/10.
//

import Foundation



class TodosVM : ObservableObject {
    
    init(){
        print("#fileID, #function, #line")
        TodosAPI.fetchTodos { result in
            
            switch result {
            case .success(let todosResponse):
                print("TodosVM - todosResponse : \(todosResponse)")
            case .failure(let failure):
                print("TodosVM - failure : \(failure)")
            }
        }
    }
}
