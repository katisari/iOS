//
//  CustomCell.swift
//  binary_counter
//
//  Created by Katie  Lee on 7/11/18.
//  Copyright © 2018 Katie  Lee. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    var indexPath: IndexPath?
    var controller: UIViewController?
    
    @IBOutlet weak var textField: UILabel!

    @IBAction func minusButtonPressed(_ sender: UIButton) {
        if let vc = controller as? ViewController {
            print("In view")
            vc.main_val -= Int(textField.text!)!
            vc.totalLabel.text = "\(vc.main_val)"
        }
        
        
    }
    
    @IBAction func plusButtonPressed(_ sender: UIButton) {
        if let vc = controller as? ViewController {
            vc.main_val += Int(textField.text!)!
            vc.totalLabel.text = "Total: \(vc.main_val)"
        }
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
