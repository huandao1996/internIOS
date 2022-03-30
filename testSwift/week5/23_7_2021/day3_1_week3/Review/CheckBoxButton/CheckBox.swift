//
//  CheckBox.swift
//  day3_1_week3
//
//  Created by huan on 23/07/2021.
//

import UIKit

class CheckBox: BaseButton {
    
    @IBOutlet weak var imv: UIImageView!
    
    ///
    
    let checkedImage = UIImage(systemName: "checkmark.square.fill")! as UIImage
    let uncheckedImage = UIImage(systemName: "square")! as UIImage
    
    // cach khac nua la lawng nghe thuoc tinh nay
    var isChecked: Bool = false {
        didSet {
            if isChecked == true {
            // self laf checkbox luc nay em doi image cho cai checbox
//                self.setImage(checkedImage, for: UIControl.State.normal)
                imv.image = checkedImage
            } else {
                imv.image = uncheckedImage
//                self.setImage(uncheckedImage, for: UIControl.State.normal)
            }
        }
    }
    
    override func setupView() {
        super.setupView()
        self.addTarget(self, action:#selector(buttonClicked(sender:)), for: UIControl.Event.touchUpInside)
        // view nafy la cai thang ben file xib cua em
        
        view?.isUserInteractionEnabled = false
        
        imv.image = uncheckedImage
        
        
        // luc nay trong cai stack
        
        // imv
        
        // view
        
        //CheckBox
        
        // thang checkbox no laj nam duoi may thang kia, nen k thay hien tren ui
        
        
    }
    
    
    
    @objc func buttonClicked(sender: UIButton) {
        if sender == self {
            isChecked = !isChecked
//            if isChecked == true {
//            // self laf checkbox luc nay em doi image cho cai checbox
////                self.setImage(checkedImage, for: UIControl.State.normal)
//                imv.image = checkedImage
//            } else {
//                imv.image = uncheckedImage
////                self.setImage(uncheckedImage, for: UIControl.State.normal)
//            }
        }
        
    }
    
}
