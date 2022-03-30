//
//  MyViewController.swift
//  day5week2
//
//  Created by huan on 09/07/2021.
//

import UIKit

class MyViewController: UIViewController {
    let ButtonA = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
//        title = "Trang 1"
//        ButtonA.setTitle("chuyen trang",for: .normal)
//        view.addSubview(ButtonA)
//        ButtonA.backgroundColor = .red
//        ButtonA.setTitleColor(.blue, for: .normal)
//        ButtonA.frame = CGRect(x:100, y: 100, width: 200, height: 50)
//        ButtonA.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
//        // Do any additional setup after loading the view.
        
    }
//    @objc private func didTapButton() {
//        let rootVC = secondViewController()
//        let navVC = UINavigationController(rootViewController: rootVC)
//        present(navVC, animated: true)
////          let VC3 = ThirdViewController()
////          let navVC = UINavigationController(rootViewController: VC3)
////          present(navVC, animated: true)
//    }
}
//
class secondViewController: UIViewController {
    let ButtonB = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        title = "trang 2"
        ButtonB.setTitle("chuyen trang",for: .normal)
        view.addSubview(ButtonB)
        ButtonB.backgroundColor = .red
        ButtonB.setTitleColor(.blue, for: .normal)
        ButtonB.frame = CGRect(x:100, y: 100, width: 200, height: 50)
        ButtonB.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    @objc private func didTapButton() {
        let VC2 = UIViewController()
        VC2.view.backgroundColor = .blue
        navigationController?.pushViewController(VC2, animated: true)
    }
    
}
