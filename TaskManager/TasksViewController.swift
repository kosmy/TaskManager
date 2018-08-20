//
//  TasksViewController.swift
//  TaskManager
//
//  Created by Nikita Kostash on 20.08.2018.
//  Copyright © 2018 Nikita Kostash. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var appTableView: UITableView!

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TaskManagerModel.task.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = TaskManagerModel.task[indexPath.row]
        cell.textLabel?.textColor = UIColor.white
        cell.detailTextLabel?.text = TaskManagerModel.desc[indexPath.row]
        cell.detailTextLabel?.textColor = UIColor.white
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            TaskManagerModel.task.remove(at: indexPath.row)
            TaskManagerModel.desc.remove(at: indexPath.row)
            appTableView.reloadData()
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        appTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
