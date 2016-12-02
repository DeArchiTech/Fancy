//
//  SecondViewController.swift
//  Fancy
//
//  Created by davix on 11/28/16.
//  Copyright © 2016 geniemedialabs. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController ,UITableViewDataSource, UITableViewDelegate{
    
    var items : [ToDoItem] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.items.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customcell", for: indexPath)
        return cell
        
    }
    
    @objc(tableView:didSelectRowAtIndexPath:) func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
    }

}

