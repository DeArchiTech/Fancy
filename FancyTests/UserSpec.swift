//
//  UserSpec.swift
//  Fancy
//
//  Created by davix on 12/1/16.
//  Copyright © 2016 geniemedialabs. All rights reserved.
//

import Foundation
import Nimble
import Quick
@testable import Fancy

class UserSpec: QuickSpec{
    
    override func spec() {
        describe("#Add Board"){
            it("Adds a board to the user object"){
                let user = User.init()
                let boardID = "1234"
                user.addBoard(boardID: boardID)
                expect(user.boardID.contains(boardID)).to(beTruthy())
            }
        }
        
        describe("#Remove Board"){
            it("Removes a board from the user object"){
                let user = User.init()
                let boardID = "1234"
                user.addBoard(boardID: boardID)
                expect(user.boardID.contains(boardID)).to(beTruthy())
                
                user.removeBoard(boardID: boardID)
                expect(user.boardID.contains(boardID)).to(beFalse())
            }
        }
    }
}
