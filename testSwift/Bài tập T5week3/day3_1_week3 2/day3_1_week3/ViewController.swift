//
//  ViewController.swift
//  day3_1_week3
//
//  Created by huan on 13/07/2021.
//

import UIKit

class ViewController: UIViewController {
//#########################
    let button1 = CustomButton(background: .blue, title: "BUTTON",colorTitle: .white, image: nil,cornerRadius: 0)
    let button2 = CustomButton(background: .black, title: "BUTTON",colorTitle: .white, image: nil,cornerRadius: 0)
    let button3 = CustomButton(background: .blue, title: "FALSE",colorTitle: .white,image: nil,cornerRadius: 0)
    let button4 = CustomButton(background: .systemGray5, title: "BUTTON",colorTitle: .systemGray3,image: nil,cornerRadius: 0)
    let button5 = CustomButton(background: .systemGray6, title: "FALSE",colorTitle: .black,image: nil,cornerRadius: 7)
//#########################
    let button6 = CustomButton(background: .blue, title: "CREATE",colorTitle: .white,image: UIImage(systemName: "plus"),cornerRadius: 20)
    let button7 = CustomButton(background: .systemGray3, title: "Action chip",colorTitle: .black,image: nil,cornerRadius: 20)
    let button8 = CustomButton(background: .white, title: "Outlined chip",colorTitle: .black,image: nil,cornerRadius: 20)
    let button9 = image2button()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        setupButtonUI1()
        setupButtonUI2()
        
    }
    
    private func setupButtonUI1() {
        view.addSubview(button1)
        button1.frame = .init(x: 30, y: 200, width: 150, height: 50)
        view.addSubview(button2)
        button2.frame = .init(x: 30, y: 270, width: 300, height: 50)
        view.addSubview(button3)
        button3.frame = .init(x: 30, y: 330, width: 150, height: 50)
        view.addSubview(button4)
        button4.frame = .init(x: 30, y: 400, width: 150, height: 50)
        view.addSubview(button5)
        button5.frame = .init(x: 30, y: 470, width: 150, height: 50)
        button5.shadow()
    }
    private func setupButtonUI2() {
        view.addSubview(button6)
        button6.frame = .init(x: 30, y: 540, width: 150, height: 50)
        view.addSubview(button7)
        button7.frame = .init(x: 30, y: 610, width: 150, height: 40)
        view.addSubview(button8)
        button8.frame = .init(x: 30, y: 670, width: 200, height: 40)
        button8.borderBackground()
        view.addSubview(button9)
        button9.frame = .init(x: 30, y: 730, width: 170, height: 50)
    }


        
    @IBAction func movePage2(_ sender: Any) {
        let vc = ViewControllerB(nibName: "ViewControllerB", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
}
