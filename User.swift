//
//  User.swift
//  Fancy
//
//  Created by davix on 12/1/16.
//  Copyright © 2016 geniemedialabs. All rights reserved.
//

import Foundation
class User{
    
    var ID : String = ""
    var userName : String = ""
    var email : String = ""
    var boardID : [String] = []
    
    init(){
    }
    
    func addBoard(boardID : String){
        self.boardID.append(boardID)
    }
    
    func removeBoard(boardID : String){
        for index in 0...self.boardID.count {
            if self.boardID[index] == boardID{
                self.boardID.remove(at: index)
                break
            }
        }
    }
    
}
