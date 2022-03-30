//
//  CustomButton.swift
//  day3_1_week3
//
//  Created by huan on 15/07/2021.
//

import Foundation
import UIKit

struct TextButton {
    let textButton: String?
    let buttonBackground: UIColor?
    let buttonTextColor: UIColor?
}

class CustomButton: UIButton {
    // keo tha cai view ben xib vao, file xib thi chi set cho file owner, k set cho cai view
    private let textButtonLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
//        label.textColor = .white
        label.font = .systemFont(ofSize: 18)
//        label.backgroundColor = .blue
        return label
    }()
    @IBOutlet var vContent: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
        addSubview(textButtonLabel)
        clipsToBounds = true
//        layer.cornerRadius = 8
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadNib()
    }
    
    func configure (with viewModel: TextButton){
        textButtonLabel.text = viewModel.textButton
        textButtonLabel.backgroundColor = viewModel.buttonBackground
        textButtonLabel.textColor = viewModel.buttonTextColor
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        textButtonLabel.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height)
    }
    
    func loadNib() {
        // sai cho nay, button no khac
        //https://stackoverflow.com/questions/38163469/how-to-design-a-custom-uibutton-in-a-xib-file
        Bundle.main.loadNibNamed("CustomButton", owner: self, options: nil)
        addSubview(vContent)
        vContent.frame = bounds
    }

}
