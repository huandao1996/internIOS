//
//  textFieldLogin.swift
//  day3_1_week3
//
//  Created by huan on 16/07/2021.
//


import Foundation
import UIKit

class textFieldLogin: UIView {
    @IBOutlet weak var ldltextField: UITextField!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = 20
        layer.masksToBounds = true
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        layer.cornerRadius = 50
        loadNib()
    }
    
    func loadNib() {
        let userView = Bundle.main.loadNibNamed("textFieldLogin", owner: self, options: nil)?.first as! UIView
        userView.frame = bounds
        addSubview(userView)
        ldltextField.layer.borderWidth = 2
        ldltextField.layer.cornerRadius = 20
        ldltextField.layer.masksToBounds = true
    }
    
    
//    func setText(text: String) {
//        lbTitle.text = text
//    }
    
    func getText() -> String {
        return ldltextField.text ?? ""
    }
    
    func setTextINTextField(text: String){
        ldltextField.text = text
    }
    
}
