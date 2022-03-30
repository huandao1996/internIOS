//
//  CustomView.swift
//  day2week3
//
//  Created by huan on 12/07/2021.
//
import UIKit

protocol PassDataToVC: class {
    func PassData(text:String)
}

class CustomView: UIViewController {
    
    var data = ""
    var delegate: PassDataToVC!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = data
    }
    

    @IBAction func onClickBack(_ sender: Any) {
        delegate.PassData(text: textField.text!)
        navigationController?.popViewController(animated: true)
    }
    
    
}

