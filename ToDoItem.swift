//
//  ToDoItem.swift
//  Fancy
//
//  Created by davix on 11/28/16.
//  Copyright © 2016 geniemedialabs. All rights reserved.
//

import Foundation
import CoreData

@objc(ToDoItem)
class ToDoItem : NSManagedObject {
    
    @NSManaged var name : String?
    @NSManaged var createDate : Date?
    var dueDate : Date?
    var urgent : Bool  = false
    var important : Bool = true
    
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
