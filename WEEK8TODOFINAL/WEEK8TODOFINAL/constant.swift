//
//  File.swift
//  WEEK8TODOFINAL
//
//  Created by Decagon on 5/19/21.
//

import Foundation
var todoList: [String]?

func saveData(todoList: [String]) {
    UserDefaults.standard.set( todoList, forKey: "todoList")
}

func fetchData() -> [String]? {
    if let todo = UserDefaults.standard.array(forKey: "todoList") as? [String] {
        return todo} else {
            return nil
    }
}
