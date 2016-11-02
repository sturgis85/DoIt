//
//  ViewController.swift
//  DoIt
//
//  Created by John Fiedler on 10/31/16.
//  Copyright © 2016 SlobberHound. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    
    var tasks: [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tasks = makeTasks()
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()     // we're creating a tableviewcell object in cell
        let task = tasks[indexPath.row]
        if task.important {
            cell.textLabel?.text = "! \(task.name)"
        } else {
            cell.textLabel?.text = task.name
        }
        

        return cell
    }
    
    
    func makeTasks() -> [Task] {
        let task1 = Task()
        task1.name = "Walk the dog"
        task1.important = false

        let task2 = Task()
        task2.name = "Buy cheese"
        task2.important = true

        let task3 = Task()
        task3.name = "Mow the lawn"
        task3.important = false
        
        return [task1, task2, task3]
    }


}

