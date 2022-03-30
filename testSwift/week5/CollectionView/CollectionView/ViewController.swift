//
//  ViewController.swift
//  CollectionView
//
//  Created by huan on 05/08/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionview: UICollectionView!
    
//    var users: [User] = User.getDummyDatas()
    var myClassCounter : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "HomeCell", bundle: .main)
        collectionview.register(nib, forCellWithReuseIdentifier: "HomeCell")
        
        collectionview.delegate = self
        collectionview.dataSource = self
        collectionview.backgroundColor = .blue
        //let screenWidth = UIScreen.main.bounds.width - 10
                //2
                let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
                layout.sectionInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
                layout.itemSize = CGSize(width: 150, height: 200)
                layout.minimumInteritemSpacing = 20
                layout.minimumLineSpacing = 20
                //3
                collectionview!.collectionViewLayout = layout
    }

}


extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCell", for: indexPath) as! HomeCell
        cell.configure(image: UIImage(systemName: "gearshape")!, lbsmall: "Mop", lbbig: "0")
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath as IndexPath) as! HomeCell
        print("sum 1")
        
        myClassCounter += 1
        cell.lbbig.text = String(myClassCounter)
        
    }
        
    
          
}
