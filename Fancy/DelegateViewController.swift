//
//  DelegateQuadrant.swift
//  Fancy
//
//  Created by davix on 12/2/16.
//  Copyright © 2016 geniemedialabs. All rights reserved.
//
import UIKit
import CoreData

class DelegateViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func fetch() -> Bool{
        let moc = DataController().managedObjectContext
        let fetchRequest = NSFetchRequest<ToDoItem>(entityName: "ToDoItem")
        
        do {
            let fetchedItem = try moc.fetch(fetchRequest as! NSFetchRequest<NSFetchRequestResult>) as! [ToDoItem]
            print(fetchedItem.first!.name!)
            
        } catch {
            fatalError("Failed to fetch person: \(error)")
        }
        return true
    }
    
    func seed() -> Bool{
        
        // create an instance of our managedObjectContext
        let moc = DataController().managedObjectContext
        
        // we set up our entity by selecting the entity and context that we're targeting
        let entity = NSEntityDescription.insertNewObject(forEntityName: "ToDoItem", into: moc) as! ToDoItem
        
        // add our data
        entity.setValue("ItemName", forKey: "name")
        
        // we save our entity
        do {
            try moc.save()
        } catch {
            fatalError("Failure to save context: \(error)")
        }
        return true
        
    }
    
}
