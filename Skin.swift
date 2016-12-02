//
//  Skin.swift
//  Fancy
//
//  Created by davix on 12/2/16.
//  Copyright © 2016 geniemedialabs. All rights reserved.
//

import Foundation
import UIKit

class Skin{
    
    var skinID : String = ""
    var skinName : String = ""
    var imageUrl : String?
    var imageData : Data?
    
    func getUIImage() -> UIImage?{
        
        if self.imageData == nil{
            let url = URL(string: self.imageUrl!)
            self.imageData = try? Data(contentsOf: url!)
        }
        return UIImage.init(data: self.imageData!)
        
    }
    
}
