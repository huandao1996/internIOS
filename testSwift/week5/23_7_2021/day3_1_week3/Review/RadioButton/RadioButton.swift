//
//  RadioButton.swift
//  day3_1_week3
//
//  Created by huan on 23/07/2021.
//

import UIKit

class RadioButton: BaseButton{
    // cai nay khi nua dung cai khac hay hon, cach nay k ai lam, m thoi lam luon, khi nua em se dung no qua phan tableview
    
    
    
    
    @IBOutlet var arr_button: [UIButton]!
    
    // k co cai @IBOutlet radioFemale nao nen no crash
    
    let radioOn = UIImage(named: "radio_on")! as UIImage
    let radioOff = UIImage(named:"radio_off")! as UIImage
    
    // cach khac nua la lawng nghe thuoc tinh nay
    var isChecked: Bool = false {
        didSet {
            if isChecked == true {
//                radio1.image = radioOn
//                radio2.image = radioOff
            } else {
//                radio1.image = radioOff
//                radio2.image = radioOn
            }
        }
    }
    // tr loi taij day di em
    // sao lai co 2 tam hinh
    // thì em gán để có đổi á mà
    // co nghia la nhan qua tam kia thi tam ben day bo chon dung k
     // dung roi anh
    // vay thi em phai duyet mang, de y anh dang keo collection oulet -> 1 mang outlet

    override func setupView() {
        super.setupView()
//        self.addTarget(self, action:#selector(buttonClicked1(sender:)), for: UIControl.Event.touchUpInside)
//        view?.isUserInteractionEnabled = false
//        radio1.image = radioOn
//        radio2.image = radioOff
        
        for i in 0...arr_button.count - 1 {
            if i == 0 {
                arr_button[i].setImage(radioOn, for: .normal)
            } else {
                arr_button[i].setImage(radioOff, for: .normal)
            }
//            arr_button[i].addTarget(self, action: #selector(buttonClicked1(sender:)), for: .touchUpInside)
//            arr_button[i].isUserInteractionEnabled = true
        }
        
        
        //lag qua ta
    }
    // doi ten ham nay lai, nho lai dat ten bien vaf ham phai co y nghia, thuc hien 1 chuc nang nao o, ng khac xem code ho biet dc bien do su dung lafm gi, ham su dung lam gi
    @objc func buttonClicked1(sender: UIButton) {
        if sender == self {
            isChecked = !isChecked

        }
        print(sender.tag)

    }
    
    
    // cai dat tag de lay inden cua button trong cai mang arr_button
    // em tu lam giai thuat nay dc k, button dau tien tag = 0, cai thu 2 tag = 1, nhn vao ham nay no se cho minh cai tag, tu cai tag nay suy ra dc button trong mang, r lay buton do setimage lai thanh radioMn, maay thang con lai radioOff
    // ok?
    // giai thuat thi biet ma may cai nay em chua biet dung, toan tag, sender ???
    //sender laf cai buton -> tag cuar button minh vua gan o xib
    // cai tag laf minh tu dinh nghia cho no, de click vo ham nay phan biet button
    @IBAction func onTapBUtton(_ sender: UIButton) {
        print(sender.tag)
        for i in 0..<arr_button.count {
            if arr_button[i].tag == sender.tag {
                arr_button[i].setImage(radioOn, for: .normal)
                
            } else {
                arr_button[i].setImage(radioOff, for: .normal)
            }
        }
    }
}

//arr_button[i].tag == sender.tag
