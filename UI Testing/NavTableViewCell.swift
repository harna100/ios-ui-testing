//
//  NavTableViewCell.swift
//  UI Testing
//
//  Created by Paul on 11/7/17.
//  Copyright © 2017 Paul. All rights reserved.
//

import UIKit

class NavTableViewCell: UITableViewCell {

    @IBOutlet weak var lab_navCellTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
