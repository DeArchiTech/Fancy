//
//  CoreDataHelpersTest.swift
//  Fancy
//
//  Created by davix on 12/7/16.
//  Copyright © 2016 geniemedialabs. All rights reserved.
//
import Foundation
import CoreData
import XCTest
@testable import Fancy

class CoreDataHelperTest: XCTestCase{
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCoreDataStorage() {
        
        let helper = CoreDataHelper.init()
        let context = helper.setUpInMemoryManagedObjectContext()
        XCTAssertNotNil(helper)
        XCTAssertNotNil(context)
    }

}
