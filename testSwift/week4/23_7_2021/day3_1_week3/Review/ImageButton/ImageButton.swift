//
//  ImageButton.swift
//  day3_1_week3
//
//  Created by Apple on 7/22/21.
//

import Foundation
import UIKit


class ImageButton: BaseButton {
    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var lbText: UILabel!
    
    // ham nay cua thang cha, chi viec su dung lai -> muc dich cua viec tao ra base buton
    
    //ham init(frame:) -> khi khoi tao no lay cuar thang cha -> k can moi thang con phai viet lai ham do
    override func setupView() {
        super.setupView()
       
        
    }
     func adtributte(background: UIColor, title: String, colorTitle: UIColor) {
        lbText.text = title
        lbText.textColor = colorTitle
        contentView.backgroundColor = background
        // corner
//        contentView.layer.cornerRadius = CGFloat(cornerRadius)
//        contentView.layer.masksToBounds = true
    }
    
    
}
