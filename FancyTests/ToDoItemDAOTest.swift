//
//  ToDoItemDAOTest.swift
//  Fancy
//
//  Created by davix on 12/7/16.
//  Copyright © 2016 geniemedialabs. All rights reserved.
//

import Foundation
import CoreData
import XCTest
import SugarRecord
@testable import Fancy

class ToDoItemDAOTest: XCTestCase{
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCoreDataStorage() {
        
        let store = CoreDataStore.named("test")
        let bundle = Bundle(for: self.classForCoder)
        let model = CoreDataObjectModel.merged([bundle])
        let storage = try! CoreDataDefaultStorage(store: store, model: model)
        let itemDAO = ToDoItemDAO.init(storage : storage)
        
        let memoryContext = storage.memoryContext as! NSManagedObjectContext!
        XCTAssertNotNil(memoryContext)
        let path = store.path().path
        print(path)
        XCTAssertNotNil(path)
        let _: ToDoItem = try! memoryContext!.create()
        try! memoryContext?.save()
        _ = try? storage.operation({ (context, save) -> Void in
            let resultsCount = try! context.request(ToDoItem.self).fetch().count
            XCTAssert(resultsCount == 0)
        })
        //let result = itemDAO.addItemToDatabase(name: "TestItem", important : true, urgent : true, dueDate : Date.init())
        //XCTAssertTrue(result)
        
    }
    
}
