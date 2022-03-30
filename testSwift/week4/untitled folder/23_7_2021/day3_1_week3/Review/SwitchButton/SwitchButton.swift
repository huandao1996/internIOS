//
//  SwitchButton.swift
//  day3_1_week3
//
//  Created by huan on 22/07/2021.
//

import UIKit

class SwitchButton: BaseButton {

    @IBOutlet weak var switchButton: UISwitch!
    
     @IBOutlet var contentView: UIView!
     
    
    override func setupView() {
        super.setupView()
        
        
    }
    
    @IBAction func switchChangeCoclor(_ sender: UISwitch) {
        if sender.isOn {
            switchButton.thumbTintColor = .blue
        }
        else {
            switchButton.thumbTintColor = .systemGray3
        }
    }
    
}
