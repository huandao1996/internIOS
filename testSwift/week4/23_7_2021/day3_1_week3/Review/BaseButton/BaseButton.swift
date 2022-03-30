//
//  BaseButton.swift
//  day3_1_week3
//
//  Created by Apple on 7/22/21.
//

import Foundation
import UIKit


class BaseButton: UIButton {
    
    var view: UIView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNIb()
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadNIb()
      
    }
    
    func setupView() {
        
    }
    
    // load nib name dynamic, subclass ke thua k can phai load nib cho tung thang con -> muc dich cua viec tao ra class cha (BaseButton)
    private func loadNIb() {
        
        let nibName = String(describing: type(of: self))
        let nib = UINib(nibName: nibName, bundle: Bundle.main)
        view =  nib.instantiate(withOwner: self, options: nil)[0] as? UIView
        view?.frame = bounds
        addSubview(view ?? UIView())
        setupView()
    }
    
    
}
