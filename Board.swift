//
//  Board.swift
//  Fancy
//
//  Created by davix on 12/1/16.
//  Copyright © 2016 geniemedialabs. All rights reserved.
//

import Foundation
class Board{
    
    var boardName : String = ""
    var boardID : String = ""
    var itemID : [String] = []
    
    func addItem(itemID : String){
        self.itemID.append(itemID)
    }
    
    func removeItem(itemID : String){
        
        for index in 0...self.itemID.count{
            if self.itemID[index] == itemID{
                self.itemID.remove(at: index)
                break
            }
        }
    }
    
}
