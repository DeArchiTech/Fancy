//
//  ToDoItemSpec.swift
//  Fancy
//
//  Created by davix on 11/29/16.
//  Copyright © 2016 geniemedialabs. All rights reserved.
//

import Foundation
import Nimble
import Quick
@testable import Fancy

class ToDoItemSpec: QuickSpec{
    
    override func spec() {
        describe("#Get Category"){
            it("return Category.DO if it is both urgent and important"){
                let expected = Category.DO
                let actural = ToDoItem.init(urgent: true, important: true)
                expect(actural.getCategory()).to(equal(expected))
            }
            it("return Category.DO if it is both not urgent and not important"){
                let expected = Category.DELETE
                let actural = ToDoItem.init(urgent: false, important: false)
                expect(actural.getCategory()).to(equal(expected))
            }
            it("return Category.DECIDE if it is both urgent and important"){
                let expected = Category.DECIDE
                let actural = ToDoItem.init(urgent: false, important: true)
                expect(actural.getCategory()).to(equal(expected))
            }
            it("return Category.DO if it is both urgent and important"){
                let expected = Category.DELEGATE
                let actural = ToDoItem.init(urgent: true, important: false)
                expect(actural.getCategory()).to(equal(expected))
            }
        }
    }
    
}
