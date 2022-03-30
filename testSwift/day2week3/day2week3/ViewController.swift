//
//  ViewController.swift
//  day2week3
//
//  Created by huan on 12/07/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var button1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapbutton1(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: <#T##String#>)
        navigationController?.pushViewController(vc, animated: true)
    }
}

//extension ViewController: PassDataToVC {
//    func PassData(text: String) {
//        label.text = text
//    }
//}

