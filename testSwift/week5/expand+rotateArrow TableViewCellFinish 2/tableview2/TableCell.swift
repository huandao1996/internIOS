//
//  TableCell.swift
//  tableview2
//
//  Created by huan on 01/08/2021.
//

import UIKit

class TableCell: UITableViewCell {

    @IBOutlet weak var lbTextCell: UILabel!
    
    @IBOutlet weak var lbImageCell: UIImageView!
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}
