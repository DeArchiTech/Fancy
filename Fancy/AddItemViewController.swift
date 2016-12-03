//
//  AddItemViewController.swift
//  Fancy
//
//  Created by davix on 12/2/16.
//  Copyright © 2016 geniemedialabs. All rights reserved.
//
import Foundation
import UIKit
import SugarRecord
import CoreData

class AddItemViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addItem(itemName: String, important : Bool, urgent : Bool){
        
        
    }
    
    func coreDataStorage() -> CoreDataDefaultStorage {
        let store = CoreDataStore.named("db")
        let bundle = Bundle(for: self.classForCoder)
        let model = CoreDataObjectModel.merged([bundle])
        let defaultStorage = try! CoreDataDefaultStorage(store: store, model: model)
        return defaultStorage
    }
    
}
