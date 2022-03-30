//
//  CheckBox.swift
//  day3_1_week3
//
//  Created by huan on 23/07/2021.
//

import UIKit

class CheckBox: BaseButton {
    
    @IBOutlet weak var imv: UIImageView!

    
    let checkedImage = UIImage(systemName: "checkmark.square.fill")! as UIImage
    let uncheckedImage = UIImage(systemName: "square")! as UIImage

    var isChecked: Bool = false {
        didSet {
            if isChecked == true {

                imv.image = checkedImage
            } else {
                imv.image = uncheckedImage
            }
        }
    }
    
    override func setupView() {
        super.setupView()
        self.addTarget(self, action:#selector(buttonClicked(sender:)), for: UIControl.Event.touchUpInside)
        
        view?.isUserInteractionEnabled = false
        
        imv.image = uncheckedImage

        
        
    }
    
    
    
    @objc func buttonClicked(sender: UIButton) {
        if sender == self {
            isChecked = !isChecked
        }
        
    }
    
}
