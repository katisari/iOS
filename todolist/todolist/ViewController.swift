//
//  ViewController.swift
//  todolist
//
//  Created by Katie  Lee on 7/12/18.
//  Copyright © 2018 Katie  Lee. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var detailTextView: UITextView!
    
    @IBOutlet weak var dateTextField: UIDatePicker!
    

    @IBAction func addButtonPressed(_ sender: UIButton) {
        print(detailTextView.text)
        performSegue(withIdentifier: "unwindToTable", sender: sender)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


