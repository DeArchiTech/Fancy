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
    
    func testAddItem(){
        
        let helper = CoreDataHelper.init()
        let context = helper.setUpInMemoryManagedObjectContext()
        let toDoItemDAO = ToDoItemDAO.init(storage: context)
        XCTAssertTrue(toDoItemDAO.addItem(name: "", important: true, urgent: true))
        
    }
    
    func testGetAllItems(){
        
        let helper = CoreDataHelper.init()
        let context = helper.setUpInMemoryManagedObjectContext()
        let toDoItemDAO = ToDoItemDAO.init(storage: context)
        XCTAssertTrue(toDoItemDAO.addItem(name: "", important: true, urgent: true))
        XCTAssertTrue(toDoItemDAO.getAllItems().count > 0)
    }
    
    
    func testGetItem(){
        
        let helper = CoreDataHelper.init()
        let context = helper.setUpInMemoryManagedObjectContext()
        let toDoItemDAO = ToDoItemDAO.init(storage: context)
        XCTAssertTrue(toDoItemDAO.addItem(name: "", important: true, urgent: true))
        
    }
    
    func testRemoveItem(){
        
    }
    
}
