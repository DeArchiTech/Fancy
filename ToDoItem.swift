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
    
    init(urgent : Bool, important : Bool){
        self.createDate = Date.init()
        self.name = ""
        self.urgent = urgent
        self.important = important
    }
    
    func getCategory() -> Category{
        if self.urgent && self.important{
            return Category.DO
        }else if !self.urgent && self.important{
            return Category.DECIDE
        }else if self.urgent && !self.important{
            return Category.DELEGATE
        }else{//!urgent && !important
            return Category.DELETE
        }
    }
    
}
