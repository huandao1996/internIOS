import Foundation
import UIKit


class textButton: BaseButton {
   
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var lbView: UILabel!
    // ham nay cua thang cha, chi viec su dung lai -> muc dich cua viec tao ra base buton
    
    //ham init(frame:) -> khi khoi tao no lay cuar thang cha -> k can moi thang con phai viet lai ham do
    override func setupView() {
        super.setupView()
       
        
    }
     func adtributte(background: UIColor, title: String, colorTitle: UIColor) {
        lbView.text = title
        lbView.textColor = colorTitle
        contentView.backgroundColor = background
        // corner
//        contentView.layer.cornerRadius = CGFloat(cornerRadius)
//        contentView.layer.masksToBounds = true
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
    
    
}
