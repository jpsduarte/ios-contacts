//
//  ContactTableViewCell.swift
//  ios-contacts
//
//  Created by Joao Duarte on 04/05/20.
//  Copyright © 2020 Joao Duarte. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    static var CellID = "CustomCell"
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
