//
//  ViewControllerB.swift
//  day3_1_week3
//
//  Created by huan on 13/07/2021.
//

import UIKit

class ViewControllerB: UIViewController {
    let vTitleAndInput3 =  TitleAndInputView(frame: .init(x: 30, y: 220, width: 350, height: 70))
    let vTitleAndInput4 =  TitleAndInputView(frame: .init(x: 30, y: 300, width: 350, height: 70))
    
    var dataUser = ""
    var dataPW = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(vTitleAndInput3)
        view.addSubview(vTitleAndInput4)
        
        vTitleAndInput3.setText(text: "User nhận được")
        vTitleAndInput4.setText(text: "Password nhận được")
        
        vTitleAndInput3.setTextINTextField(text: dataUser)
        vTitleAndInput4.setTextINTextField(text: dataPW)
        
    }
    
    
    func receiveData(data1: String, data2: String) {
        dataUser = data1
        dataPW = data2
    }
}
