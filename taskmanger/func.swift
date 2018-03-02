//
//  func.swift
//  taskmanger
//
//  Created by Americo Lopez on 2/27/18.
//  Copyright © 2018 Americo Lopez. All rights reserved.
//



//Divide this file up into seperate files. Also file names should be representative of what's in the file so a file named func is confusing.

import Foundation



func createtasks(){
    print("name first then description next how many days from now will it be due")
    tasksArray.append(tasks(name: readLine()!, dateMade: Date(), description: readLine()!, complete: Bool(), dueDate: dates() , numberTasks: tasksArray.count ))
    print(tasksArray.count-1)
            print("put the number you recived")
             var tasksNot = Int(readLine()!)
    while tasksNot != tasksArray.count-1{
        print("put the number you recived")
    tasksNot = Int(readLine()!)
    }
    if let tasksNot = tasksNot{
        tasksArray[tasksNot].complete = false
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
