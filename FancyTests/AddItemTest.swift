//
//  AddItemTest.swift
//  Fancy
//
//  Created by davix on 12/6/16.
//  Copyright © 2016 geniemedialabs. All rights reserved.
//

import Foundation
import XCTest
@testable import Fancy

class AddItemTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCoreDataStorage() {
        let vc = AddItemViewController.init()
        XCTAssertNotNil(vc)
        let storage = vc.coreDataStorage()
        XCTAssertNotNil(storage)
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        //Test
    }

}
