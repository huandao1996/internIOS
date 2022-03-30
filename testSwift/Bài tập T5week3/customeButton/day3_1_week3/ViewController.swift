//
//  ViewController.swift
//  day3_1_week3
//
//  Created by huan on 13/07/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let button1 = CustomButton(frame: .init(x: 30, y: 30, width: 90, height: 30))
//    let vTitleAndInput2 =  TitleAndInputView(frame: .init(x: 30, y: 300, width: 350, height: 70))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        view.addSubview(button1)
        
    }    
    
}
