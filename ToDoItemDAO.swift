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

    var storage : NSManagedObjectContext?

    init(storage : NSManagedObjectContext){
        self.storage = storage
    }
    
    func addItem(name: String, important : Bool, urgent : Bool) -> Bool{
        
        // create an instance of our managedObjectContext
        let moc = self.storage!
        
        // we set up our entity by selecting the entity and context that we're targeting
        let entity = NSEntityDescription.insertNewObject(forEntityName: "ToDoItem", into: moc) as! ToDoItem
        
        // add our data
        entity.setValue(name, forKey: "name")
        entity.setValue(important, forKey: "important")
        entity.setValue(urgent, forKey: "urgent")
        
        // we save our entity
        do {
            try moc.save()
        } catch {
            fatalError("Failure to save context: \(error)")
        }
        return true
        
    }
    
    func getAllItems() -> [ToDoItem]{
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "ToDoItem")
        fetchRequest.returnsObjectsAsFaults = false
        do{
            let fetchResults = try self.storage?.fetch(fetchRequest) as! [ToDoItem]
            return fetchResults
        }catch{
            return []
        }

    }
    
    func getItem(name : String) -> ToDoItem?{
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "ToDoItem")
        fetchRequest.predicate = NSPredicate(format: "name = %@", name)
        fetchRequest.returnsObjectsAsFaults = false
        do{
            let fetchResults = try self.storage?.fetch(fetchRequest) as! [ToDoItem]
            return fetchResults.first
        }catch{
            return nil
        }
        
    }
    
    func removeAllItems() -> Bool{
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "ToDoItem")
        fetchRequest.returnsObjectsAsFaults = false
        do{
            let fetchResults = try self.storage?.fetch(fetchRequest) as! [ToDoItem]
            for item in fetchResults {
                self.storage?.delete(item)
            }
            try self.storage!.save()
        }catch{
            return false
        }
        return true
        
    }
    
    func removeItem(name : String) -> Bool{
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "ToDoItem")
        fetchRequest.predicate = NSPredicate(format: "name = %@", name)
        fetchRequest.returnsObjectsAsFaults = false
        do{
            let fetchResults = try self.storage?.fetch(fetchRequest) as! [ToDoItem]
            for item in fetchResults {
                self.storage?.delete(item)
            }
            try self.storage!.save()
        }catch{
            return false
        }
        return true
        
    }
    
}
