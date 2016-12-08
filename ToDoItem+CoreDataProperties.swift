//
//  ToDoItem+CoreDataProperties.swift
//  
//
//  Created by davix on 12/7/16.
//
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension ToDoItem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ToDoItem> {
        return NSFetchRequest<ToDoItem>(entityName: "ToDoItem");
    }

    @NSManaged public var name: String?
    @NSManaged public var important: Bool
    @NSManaged public var urgent: Bool

}
