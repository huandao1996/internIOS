//
//  ViewControllerB.swift
//  day3_1_week3
//
//  Created by huan on 13/07/2021.
//

import UIKit

class ViewControllerB: UIViewController {
    let button10 = image2button(background: .systemGray3, title: "Action chip", colorTitle: .black, image1: UIImage(systemName: "location"), image2: UIImage(systemName: "location"), cornerRadius: 20)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI3()
        
    }
    private func setupUI3(){
        view.addSubview(button10)
        button10.frame = .init(x: 30, y: 200, width: 150, height: 5)
    }
    
    
    
}
