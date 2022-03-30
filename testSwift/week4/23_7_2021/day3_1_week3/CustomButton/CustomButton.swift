//
//  CustomButton.swift
//  day3_1_week3
//
//  Created by huan on 16/07/2021.
//

import UIKit
class CustomButton: UIButton {
    
    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var lbText: UILabel!
    @IBOutlet weak var imvIcon: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.customInit()
        
    }
    convenience init(background: UIColor, title: String, colorTitle: UIColor, image: UIImage?,cornerRadius: Int) {
        self.init(frame: .zero)
        contentView.backgroundColor = background
        lbText.text = title
        lbText.textColor = colorTitle
        imvIcon.image = image
        // corner
        contentView.layer.cornerRadius = CGFloat(cornerRadius)
        contentView.layer.masksToBounds = true
        // shadow
        
    }
//    buttonLayer.shadowColor = [UIColor grayColor].CGColor;
//    buttonLayer.shadowOffset = CGSizeMake(0.f,1.f);
//    buttonLayer.masksToBounds = NO;
//    buttonLayer.shadowOpacity = 1.f;
//    convenience init(blurRadius: CGFloat, offset: CGSize, color: UIColor) {
//        self.init()
//        contentview.shadowBlurRadius = blurRadius
//        shadowOffset = offset
//        shadowColor = color
//    }
    func shadow() {
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOffset = CGSize(width:0.0,height:1)
        self.layer.shadowOpacity = 2
        self.layer.masksToBounds = false
    }
    func borderBackground(){
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
    }
    func setImageColor(color: UIColor) {
        self.tintColor = color
      }
    
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        layer.cornerRadius = 20
//        layer.masksToBounds = true
//    }
    //  init used if the view is created through IB
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.customInit()
    }
//    func configure(with viewModel: ButtonViewModel){
//        backgroundColor = viewModel.backgroundColor
//    }
    //  Do custom initialization here
    private func customInit()
    {
        Bundle.main.loadNibNamed("CustomButton", owner: self, options: nil)
        self.addSubview(self.contentView)
        self.contentView.frame = self.bounds
        self.contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
}


