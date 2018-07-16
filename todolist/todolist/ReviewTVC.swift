//
//  ReviewTVC.swift
//  todolist
//
//  Created by Katie  Lee on 7/12/18.
//  Copyright © 2018 Katie  Lee. All rights reserved.
//

import UIKit
import CoreData

class ReviewTVC: UITableViewController {
    let appdelegate = UIApplication.shared.delegate as! AppDelegate
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var thetableData : [Task] = []

    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 150
        fetchAllUser()
    }
    @IBAction func unwindToVC (segue: UIStoryboardSegue) {
        let src = segue.source as! ViewController
        let title = src.titleTextField.text
        let date = src.dateTextField.date
        let notes = src.detailTextView.text
        let newtask = Task(context: context)
        newtask.title = title
        newtask.detail = notes
        newtask.created_at = date
        newtask.done = false
        thetableData.append(newtask)
        appdelegate.saveContext()
        tableView.reloadData()
        print("Hello")
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let task = thetableData[indexPath.row]
        let cell = tableView.cellForRow(at: indexPath)
        if task.done {
            task.done = false
            cell?.accessoryType = .none
        } else {
            task.done = true
            cell?.accessoryType = .checkmark
        }
        appdelegate.saveContext()
        tableView.reloadRows(at: [indexPath], with: .none)
    }
    
    
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "addItemSegue", sender: sender)
        
    }
    
    
    func fetchAllUser() {
        let req:NSFetchRequest<Task> = Task.fetchRequest()
        do {
            thetableData = try context.fetch(req)
            // Here we can store the fetched data in an array
        } catch {
            print(error)
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return thetableData.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
        let task = thetableData[indexPath.row]
        cell.leftLabel?.text = task.title
        cell.notesFieldLabel.text = task.detail
        let dateformatter = DateFormatter()
        
        dateformatter.dateFormat = "MM/dd/yyyy"
        
        let now = dateformatter.string(from: task.created_at!)

        cell.rightLabel?.text = now
        return cell
        
    }
    

}
