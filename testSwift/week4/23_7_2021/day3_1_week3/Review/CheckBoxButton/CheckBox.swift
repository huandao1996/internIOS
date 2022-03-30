//
//  CheckBox.swift
//  day3_1_week3
//
//  Created by huan on 23/07/2021.
//

import UIKit

class CheckBox: BaseButton {

   
    
//    @IBOutlet weak var imageButton: UIImageView!
    @IBOutlet weak var imageButton: UIView!
    
    let checkedImage = UIImage(named: "ic_check_box")! as UIImage
    let uncheckedImage = UIImage(named: "ic_check_box_outline_blank")! as UIImage
    var isChecked: Bool = false
    override func draw(_ rect: CGRect) {
            if isChecked == true {
                self.setImage(checkedImage, for: UIControl.State.normal)
            } else {
                self.setImage(uncheckedImage, for: UIControl.State.normal)
            }
        }
        override func setupView() {
            super.setupView()
            self.addTarget(self, action:#selector(buttonClicked(sender:)), for: UIControl.Event.touchUpInside)
            self.isChecked = false
        }
         
    
   
    @objc func buttonClicked(sender: UIButton) {
            if sender == self {
                        isChecked = !isChecked
                        if isChecked == true {
                                self.setImage(checkedImage, for: UIControl.State.normal)
                        } else {
                                self.setImage(uncheckedImage, for: UIControl.State.normal)
                        }
                    }
            
        }
    
}
