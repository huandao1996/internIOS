import Foundation
import UIKit


class textButton: BaseButton {
   
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var lbView: UILabel!
    override func setupView() {
        super.setupView()
        self.addTarget(self, action:#selector(buttonClicked(sender:)), for: UIControl.Event.touchUpInside)
        view?.isUserInteractionEnabled = false
        
    }
     func adtributte(background: UIColor, title: String, colorTitle: UIColor) {
        lbView.text = title
        lbView.textColor = colorTitle
        contentView.backgroundColor = background
    }
    func shadow() {
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOffset = CGSize(width:0.0,height:1)
        self.layer.shadowOpacity = 2
        self.layer.masksToBounds = false
    }
    func cornerRadius(){
        self.layer.cornerRadius = 13
        self.layer.masksToBounds = true
    }
    func border(){
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.systemGray3.cgColor
    }
    
    @objc func buttonClicked(sender: UIButton) {
        print("click thanh cong")
        }
        
    
    
    
}
