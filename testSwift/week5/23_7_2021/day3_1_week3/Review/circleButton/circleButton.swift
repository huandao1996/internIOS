//
//  circleButton.swift
//  day3_1_week3
//
//  Created by huan on 27/07/2021.
//

import UIKit

class circleButton: BaseButton {

    
    @IBOutlet weak var imageDesign: UIImageView!
    
    @IBOutlet var bgView: UIView!
    
    override func setupView() {
        super.setupView()
        view?.isUserInteractionEnabled = false
        view?.layer.cornerRadius = 0.5 * (view?.bounds.size.width)!
        view!.layer.masksToBounds = true
        view?.layer.shadowColor = UIColor.gray.cgColor
       view?.layer.shadowOffset = CGSize(width:0.0,height:1)
        view?.layer.shadowOpacity = 2
        view?.layer.masksToBounds = false
    }
    func adtributte(background: UIColor, image: UIImage?) {
        bgView.backgroundColor = background
        imageDesign.image = image
        
    }
}
