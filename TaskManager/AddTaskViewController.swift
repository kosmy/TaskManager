//
//  AddTaskViewController.swift
//  TaskManager
//
//  Created by Nikita Kostash on 20.08.2018.
//  Copyright © 2018 Nikita Kostash. All rights reserved.
//

import UIKit

class AddTaskViewController: UITableViewController{
   
    @IBOutlet weak var inputName: UITextField!
    @IBOutlet weak var inputDescription: UITextField!
    
 

   
    @IBAction func addTask(_ sender: UIButton) {
        if (inputName.text != "" && inputDescription.text != "") {
            TaskManagerModel.addTask(name: inputName.text!, description: inputDescription.text!)
            view.endEditing(true)
            inputName.text = nil
            inputDescription.text = nil
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }



}
