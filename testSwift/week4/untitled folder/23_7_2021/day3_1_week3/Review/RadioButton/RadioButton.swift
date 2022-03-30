//
//  RadioButton.swift
//  day3_1_week3
//
//  Created by huan on 23/07/2021.
//

import UIKit

class RadioButton: BaseButton{

    
    @IBOutlet var arr_button: [UIButton]!

    
    let radioOn = UIImage(named: "radio_on")! as UIImage
    let radioOff = UIImage(named:"radio_off")! as UIImage
 
    var isChecked: Bool = false

    override func setupView() {
        super.setupView()

        
        for i in 0...arr_button.count - 1 {
            if i == 0 {
                arr_button[i].setImage(radioOn, for: .normal)
            } else {
                arr_button[i].setImage(radioOff, for: .normal)
            }

        }
   
    }
 
    @objc func buttonClicked1(sender: UIButton) {
        if sender == self {
            isChecked = !isChecked

        }
        print(sender.tag)

    }

    @IBAction func onTapBUtton(_ sender: UIButton) {
        print(sender.tag)
        for i in 0..<arr_button.count {
            if arr_button[i].tag == sender.tag {
                arr_button[i].setImage(radioOn, for: .normal)
                
            } else {
                arr_button[i].setImage(radioOff, for: .normal)
            }
        }
    }
}
