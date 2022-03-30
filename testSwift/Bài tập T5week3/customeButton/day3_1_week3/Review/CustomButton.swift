//
//  CustomButton.swift
//  day3_1_week3
//
//  Created by huan on 15/07/2021.
//

import Foundation
import UIKit

class CustomButton: UIButton {

    
        override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadNib()
    }
    
    func loadNib() {
        let userView = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)?.first as! UIButton
        userView.frame = bounds
        addSubview(userView)
    }

}
