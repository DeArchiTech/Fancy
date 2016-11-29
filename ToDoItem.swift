//
//  ToDoItem.swift
//  Fancy
//
//  Created by davix on 11/28/16.
//  Copyright © 2016 geniemedialabs. All rights reserved.
//

import Foundation
class ToDoItem{
    
    var name : String
    var createDate : Date
    var dueDate : Date?
    var urgent : Bool  = false
    var important : Bool = true
    
    init() {
        self.createDate = Date.init()
        self.name = ""
    }
    
    func getCategory(urgent : Bool, important : Bool) -> Category{
        if urgent && important{
            return Category.DO
        }else if !urgent && important{
            return Category.DECIDE
        }else if urgent && !important{
            return Category.DELEGATE
        }else{//!urgent && !important
            return Category.DELETE
        }
    }
    
}
