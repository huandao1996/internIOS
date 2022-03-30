//
//  DetailViewController.swift
//  tableView
//
//  Created by huan on 29/07/2021.
//

import UIKit
class DetailViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Detail"
        
        nameLabel.text = name
    }
}
