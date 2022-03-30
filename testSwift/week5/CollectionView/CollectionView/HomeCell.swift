//
//  HomeCell.swift
//  CollectionView
//
//  Created by huan on 05/08/2021.
//

import UIKit

class HomeCell: UICollectionViewCell {
   
    @IBOutlet weak var lbsmall: UILabel!
    @IBOutlet weak var lbbig: UILabel!
    @IBOutlet weak var lbimage: UIImageView!
    
    static let identifier = "HomeCell"
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    public func configure(image: UIImage, lbsmall: String, lbbig: String){
        self.lbimage.image = image
        self.lbsmall.text = lbsmall
        self.lbbig.text = lbbig
        
    }
    public func click() {
        var myVariable = 0
        myVariable += 1
        lbbig.text = String(myVariable)
    }

}
