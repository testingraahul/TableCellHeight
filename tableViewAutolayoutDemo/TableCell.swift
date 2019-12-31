//
//  TableCell.swift
//  tableViewAutolayoutDemo
//
//  Created by admin on 31/12/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {

    @IBOutlet var titleLbl: UILabel!
    @IBOutlet var detailLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        //set numberOfLines = 0 to automatic increase cell according to text
        detailLbl.numberOfLines = 0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
