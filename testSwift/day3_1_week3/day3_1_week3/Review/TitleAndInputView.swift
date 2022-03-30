//
//  TitleAndInputView.swift
//  day3_1_week3
//
//  Created by Apple on 7/13/21.
//

import Foundation
import UIKit

class TitleAndInputView: UIView {
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var tfInput: UITextField!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadNib()
    }
    
    func loadNib() {
        let userView = Bundle.main.loadNibNamed("TitleAndInputView", owner: self, options: nil)?.first as! UIView
        userView.frame = bounds
        addSubview(userView)
    }
    
    func setText(text: String) {
        lbTitle.text = text
    }
    
    func getText() -> String {
        return tfInput.text ?? ""
    }
    
    func setTextINTextField(text: String){
        tfInput.text = text
    }
    
}


