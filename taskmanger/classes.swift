//
//  classes.swift
//  taskmanger
//
//  Created by Americo Lopez on 3/2/18.
//  Copyright © 2018 Americo Lopez. All rights reserved.
//

import Foundation
class tasks{
    var name: String
    var dateMade : Date
    var description: String
    var complete: Bool
    var dueDate: Date
    var numberTasks: Int
    init(name: String, dateMade: Date, description: String, complete: Bool, dueDate: Date, numberTasks: Int ){
        self.name = name
        self.dateMade = dateMade
        self.description = description
        self.complete = complete
        self.dueDate = dueDate
        self.numberTasks = numberTasks
    }
}
