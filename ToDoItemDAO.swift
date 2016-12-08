//
//  ToDoItemDAO.swift
//  Fancy
//
//  Created by davix on 12/7/16.
//  Copyright © 2016 geniemedialabs. All rights reserved.
//
import Foundation
import CoreData
import SugarRecord

class ToDoItemDAO : NSObject{

    var storage : CoreDataDefaultStorage?

    init(storage : CoreDataDefaultStorage){
        self.storage = storage
    }
    
    func addItemToDatabase(name: String, important : Bool, urgent : Bool, dueDate : Date) -> Bool{
        
//        let db = self.storage
//        try! db?.operation { (context, save) -> Void in
//            let _object: ToDoItem = try! context.new()
//            _object.name = name
//            _object.important = important
//            _object.urgent = urgent
//            _object.dueDate = dueDate
//            _object.createDate = Date.init()
//            try! context.insert(_object)
//            save()
//        }
        return true
        
    }
    
}
