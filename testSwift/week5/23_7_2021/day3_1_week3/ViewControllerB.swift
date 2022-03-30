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

//import UIKit
//
//class ViewController: UIViewController {
////#########################
//    let button1 = ImageButton(frame: .init(x: 50, y: 150, width: 150, height: 80))
//    let button2 = SwitchButton(frame: .init(x: 50, y: 250, width: 60, height: 40))
//    // checkBoxButton or btnCheckBox

//
//    let button3 = CheckBox(frame: .init(x: 50, y: 320, width: 50, height: 50))
//    //circlebutton

//    let button4 = circleButton(frame: .init(x: 50, y: 400, width: 80, height: 80))
//    let button5 = circleButton(frame: .init(x: 150, y: 400, width: 80, height: 80))
//    let button6 = circleButton(frame: .init(x: 250, y: 400, width: 80, height: 80))
//    let button7 = circleButton(frame: .init(x: 50, y: 500, width: 80, height: 80))
//    let button8 = circleButton(frame: .init(x: 150, y: 500, width: 80, height: 80))
//    let button9 = circleButton(frame: .init(x: 250, y: 500, width: 80, height: 80))
//
//    let button10 = circleButton(frame: .init(x: 50, y: 600, width: 80, height: 80))
//    let button11 = circleButton(frame: .init(x: 150, y: 600, width: 80, height: 80))
//
//    let button12 = RadioButton(frame: .init(x: 50, y: 700, width: 200, height: 80))
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        setupButtonUI1()
//
////        setupButtonUI1()
////        setupButtonUI2()
//
////        let customButton = BaseButton(frame: .init(x: 50, y: 300, width: 300, height: 50))
////        view.addSubview(customButton)
////
//    }
//
//    private func setupButtonUI1() {
//        view.addSubview(button1)
//        button1.adtributte(background: .blue, title: "BUTTON", colorTitle: .black)
//        view.addSubview(button2)
//        view.addSubview(button3)
//
//        view.addSubview(button4)
//        button4.adtributte(background: .green, image: UIImage(systemName: "phone.fill"))
//        view.addSubview(button5)
//        button5.adtributte(background: .red, image: UIImage(systemName: "person.fill.badge.plus"))
//        view.addSubview(button6)
//        button6.adtributte(background: .blue, image: UIImage(systemName: "arrow.triangle.turn.up.right.diamond.fill"))
//
//        view.addSubview(button7)
//        button7.adtributte(background: .orange, image: UIImage(systemName: "plus"))
//        view.addSubview(button8)
//        button8.adtributte(background: .black, image: UIImage(systemName: "plus"))
//        view.addSubview(button9)
//        button9.adtributte(background: .orange, image: UIImage(systemName: "phone.down.fill"))
//
//        view.addSubview(button10)
//        button10.adtributte(background: .blue, image: UIImage(systemName: "location.north.fill"))
//        view.addSubview(button11)
//        button11.adtributte(background: .orange, image: UIImage(systemName: "pencil"))
//
//
//
//
//
//    }
//
//
//
//    @IBAction func movePage2(_ sender: Any) {
//        let vc = ViewControllerB(nibName: "ViewControllerB", bundle: nil)
//        navigationController?.pushViewController(vc, animated: true)
//    }
//}
