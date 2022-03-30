//
//  ViewBController.swift
//  day3week3
//
//  Created by huan on 13/07/2021.
//

import UIKit
protocol passDataToA: class {
    func passData(info:String)
}
class ViewBController: UIViewController {
    weak var delegate: passDataToA? = nil
    
    @IBOutlet weak var txtData: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onClickButtonB(_ sender: UIButton) {
        delegate?.passData(info: txtData.text!)
        self.navigationController?.popViewController(animated: true)
    }
}
