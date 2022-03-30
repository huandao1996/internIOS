//
//  image2button.swift
//  day3_1_week3
//
//  Created by huan on 20/07/2021.
//

import UIKit

class image2button: CustomButton {

    @IBOutlet weak var leftImage: UIImageView!
    @IBOutlet weak var midLabel: UILabel!
    @IBOutlet weak var rightImage: UIImageView!
    @IBOutlet var view2content: UIView!
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    convenience init(background: UIColor, title: String?, colorTitle: UIColor, image1: UIImage?,image2: UIImage? ,cornerRadius: Int) {
        self.init(frame: .zero)
        view2content.backgroundColor = background
        midLabel?.text = title
        midLabel.textColor = colorTitle
        leftImage.image = image1
        rightImage.image = image2
        // corner
        view2content.layer.cornerRadius = CGFloat(cornerRadius)
        view2content.layer.masksToBounds = true
        // shadow
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func customInit()
    {
        Bundle.main.loadNibNamed("image2button", owner: self, options: nil)
        self.addSubview(self.view2content)
        self.view2content.frame = self.bounds
        self.view2content.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
}

