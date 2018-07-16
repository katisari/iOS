//
//  CustomCell.swift
//  todolist
//
//  Created by Katie  Lee on 7/12/18.
//  Copyright © 2018 Katie  Lee. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var rightLabel: UILabel!
    @IBOutlet weak var leftLabel: UILabel!
    
    @IBOutlet weak var notesFieldLabel: UITextView!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
