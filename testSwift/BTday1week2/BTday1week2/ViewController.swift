//
//  ViewController.swift
//  BTday1week2
//
//  Created by huan on 06/07/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblData: UILabel!
    var textFormMainVC: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblData?.text = textFormMainVC
        // Do any additional setup after loading the view.
    }


}

