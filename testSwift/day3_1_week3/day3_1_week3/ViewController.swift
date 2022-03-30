//
//  ViewController.swift
//  day3_1_week3
//
//  Created by huan on 13/07/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let vTitleAndInput =  TitleAndInputView(frame: .init(x: 30, y: 220, width: 350, height: 70))
    let vTitleAndInput2 =  TitleAndInputView(frame: .init(x: 30, y: 300, width: 350, height: 70))
    
    // giong v
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    // viewDIdload em tach tung ham lam nhung nhiem vu rieng biet
    
    private func setupUI() {
        view.backgroundColor = .white
        view.addSubview(vTitleAndInput)
        view.addSubview(vTitleAndInput2)
   
        vTitleAndInput.setText(text: "Email or Phone")
        vTitleAndInput2.setText(text: "Password")
        
    }
    
    @IBAction func buttonLogin(_ sender: Any) {
        let userData = vTitleAndInput.getText()
        let pwData = vTitleAndInput2.getText()
        let vc = ViewControllerB(nibName: "ViewControllerB", bundle: nil)
        vc.receiveData(data1: userData, data2: pwData)
        navigationController?.pushViewController(vc, animated: true)
    }
        
        // get text cung lam tuong tu
//        vc.dataUser = userData!
//        vc.dataPW = pwData!
        
        
        
        
        
    
}
