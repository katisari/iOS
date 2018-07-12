//
//  ViewController.swift
//  binary_counter
//
//  Created by Katie  Lee on 7/11/18.
//  Copyright © 2018 Katie  Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var main_val = 0
    var tableData: [Decimal] = []
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBAction func plusButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func minusButtonPressed(_ sender: UIButton) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        for i in 0...15 {
            tableData.append(pow(10, i))
        }
        print(tableData)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
        cell.controller = self
        cell.textField.text = "\(tableData[indexPath.row])"
//        cell.minusButton.tag = indexPath.row
//        cell.plusButton.tag = indexPath.row
        return cell
    }
    
    
}
