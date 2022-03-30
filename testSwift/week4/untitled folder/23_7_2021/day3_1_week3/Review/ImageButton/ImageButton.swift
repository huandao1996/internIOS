//
//  CustomButton.swift
//  day3_1_week3
//
//  Created by huan on 16/07/2021.
//

import UIKit
class ImageButton: BaseButton {
    
    
    @IBOutlet weak var imIcon: UIImageView!
    
    @IBOutlet weak var lbText: UILabel!
    @IBOutlet weak var imIconR: UIImageView!
    
    @IBOutlet var contentView: UIView!
    override func setupView() {
        super.setupView()
        self.addTarget(self, action:#selector(buttonClicked(sender:)), for: UIControl.Event.touchUpInside)
        view?.isUserInteractionEnabled = false
        
    }
    
    func adtributte(background: UIColor, title: String, colorTitle: UIColor, imageL: UIImage?,imageR: UIImage?,cornerRadius: Int) {
        contentView.backgroundColor = background
        lbText.text = title
        lbText.textColor = colorTitle
        imIcon.image = imageL
        imIconR.image = imageR
        // corner
        contentView.layer.cornerRadius = CGFloat(cornerRadius)
        contentView.layer.masksToBounds = true
        // shadow
       
        
    }

    func setImageColor(color: UIColor) {
        imIcon.tintColor = color
        imIconR.tintColor = color
      }
    @objc func buttonClicked(sender: UIButton) {
        print("click thanh cong")
        }
    
}
