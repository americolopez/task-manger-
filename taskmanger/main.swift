//
//  main.swift
//  taskmanger
//
//  Created by Americo Lopez on 2/27/18.
//  Copyright © 2018 Americo Lopez. All rights reserved.
//

import Foundation

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
        sleep(2)
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

mainMenu()
