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
//    buttonLayer.shadowColor = [UIColor grayColor].CGColor;
//    buttonLayer.shadowOffset = CGSizeMake(0.f,1.f);
//    buttonLayer.masksToBounds = NO;
//    buttonLayer.shadowOpacity = 1.f;
//    convenience init(blurRadius: CGFloat, offset: CGSize, color: UIColor) {
//        self.init()
//        contentview.shadowBlurRadius = blurRadius
//        shadowOffset = offset
//        shadowColor = color
//    }

    func setImageColor(color: UIColor) {
        imIcon.tintColor = color
        imIconR.tintColor = color
      }
    
}
