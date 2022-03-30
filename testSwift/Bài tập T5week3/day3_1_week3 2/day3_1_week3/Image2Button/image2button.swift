//
//  image2button.swift
//  day3_1_week3
//
//  Created by huan on 20/07/2021.
//
import Foundation
import UIKit

class image2button: BaseCustom {

    @IBOutlet weak var leftImage: UIImageView!
    @IBOutlet weak var midLabel: UILabel!
    @IBOutlet weak var rightImage: UIImageView!
    @IBOutlet var view2content: UIView!
   
    override func setupView() {
        super.setupView()
        midLabel.text = "Image Button"
        
    }
}

