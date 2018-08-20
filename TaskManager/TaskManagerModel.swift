//
//  TaskManagerModel.swift
//  TaskManager
//
//  Created by Nikita Kostash on 19.08.2018.
//  Copyright © 2018 Nikita Kostash. All rights reserved.
//

import UIKit

class TaskManagerModel: NSObject {
    
    static var task = [String].init()
    static var desc = [String].init()
    
    static func addTask(name: String, description: String) {
        task.append(name)
        desc.append(description)
    }

}
