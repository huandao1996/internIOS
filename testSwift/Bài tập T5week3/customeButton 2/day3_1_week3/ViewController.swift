//
//  ViewController.swift
//  day3_1_week3
//
//  Created by huan on 13/07/2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        buttonView1()
        buttonView2()
        buttonView3()
        buttonView4()
        
    }
    
    func buttonView1(){
        let button1 = CustomButton(frame: .init(x: 30, y: 250, width: 90, height: 30))
        view.addSubview(button1)
        button1.configure(with: TextButton(textButton: "BUTTON",buttonBackground: .blue,buttonTextColor: .white))
    }
    
    func buttonView2() {
        let button2 = CustomButton(frame: .init(x: 30, y: 300, width: 90, height: 30))
        view.addSubview(button2)
        button2.configure(with: TextButton(textButton: "TRUE",buttonBackground: .blue,buttonTextColor: .white))
    }
    
    func buttonView3() {
        let button3 = CustomButton(frame: .init(x: 30, y: 350, width: 90, height: 30))
        view.addSubview(button3)
        button3.configure(with: TextButton(textButton: "FALSE", buttonBackground: .gray,buttonTextColor: .black))
    }
    func buttonView4() {
        let button4 = CustomButton(frame: .init(x: 30, y: 400, width: 270, height: 30))
        view.addSubview(button4)
        button4.configure(with: TextButton(textButton: "BUTTON", buttonBackground: .black, buttonTextColor: .white))
    }
}
