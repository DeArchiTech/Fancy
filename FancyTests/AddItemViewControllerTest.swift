//
//  AddItemViewControllerTest.swift
//  Fancy
//
//  Created by davix on 12/8/16.
//  Copyright © 2016 geniemedialabs. All rights reserved.
//
import Foundation
import XCTest
@testable import Fancy

class AddItemViewControllerTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAddItem() {
        let vc = AddItemViewController()
        let itemName = "itemName"
        XCTAssertTrue(vc.addItemToDatabase(name: itemName, important: true, urgent: true))
    }
    
}
