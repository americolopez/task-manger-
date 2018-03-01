//
//  func.swift
//  taskmanger
//
//  Created by Americo Lopez on 2/27/18.
//  Copyright © 2018 Americo Lopez. All rights reserved.
//

import Foundation
var tasksComplete : Bool?

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
var tasksArray = [tasks]()

func mainMenu(){
    var numberOfTasks = tasksArray.count
    print("""
1.create tasks
Enter 1
2.browse tasks
Enter 2
3.completed tasks
Enter 3
4.Exit
enter 4
""")
    let Input = Int(readLine()!)
    if Input == nil {
        print("pls type in number 1-4")
        mainMenu()
    }else if Input == 2{
        browseTasks()
    }else if Input == 3{
        taskComplete()
    }else if Input == 4{
        exit(0)
    }else if Input == 1 {
        createtasks()
    }else{
        print("pls type in number 1-4")
        sleep(2)
        mainMenu()
    }
}
func createtasks(){
    print("name first then description next how many days from now will it be due")
    // var y : DateFormatter = DateFormatter()
    //y.dateFormat = "MM/dd/yyyy"
    //y.string(from: date)
    tasksArray.append(tasks(name: readLine()!, dateMade: Date(), description: readLine()!, complete: Bool(), dueDate: dates() , numberTasks: tasksArray.count ))
    print(tasksArray.count-1)
    for tasks in tasksArray{
        print("put the number you recived")
        let tasksNot = Int(readLine()!)!
        if tasksNot != nil && tasksNot <= tasksArray.count - 1 {
            tasksArray[tasksNot].complete = false
        }
    }
    mainMenu()
}
func taskComplete(){
    if tasksArray.count > 0{
        for tasks in tasksArray{
            print ("what tasks did you complete")
            let taskDone = Int(readLine()!)!
            if taskDone != nil && taskDone <= tasksArray.count - 1 {
                tasksArray[taskDone].complete = true
            }
        }
    }
    print("you have complete your tasks")
    sleep(2)
    mainMenu()
}

func browseTasks() {
    if tasksArray.count > 0{
        for tasks in tasksArray{
            print("""
                name \(tasks.name)
                complete \(tasks.complete)
                duedate \(tasks.dueDate)
                description \(tasks.description)
                number \(tasks.numberTasks)
                
                """)
        }
    }
    sleep(3)
    mainMenu()
}
func dates()-> Date{
    var numDays = Int(readLine()!)
    while numDays == nil {
        print("please type in a number")
        numDays = Int(readLine()!)
    }
    var numSeconds = numDays! * 24 * 60 * 60 //number of seconds in the number of days the user entered
    var date = Date().addingTimeInterval(TimeInterval(numSeconds))
    return date
}
