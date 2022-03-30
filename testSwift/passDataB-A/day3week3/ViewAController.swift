//
//  ViewAController.swift
//  day3week3
//
//  Created by huan on 13/07/2021.
//

import UIKit

class ViewAController: UIViewController, passDataToA {

    @IBOutlet weak var buttonA: UIButton!
    @IBOutlet weak var labelA: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickButtonA(_ sender: Any) {
        let vc = ViewBController(nibName: "ViewBController", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
        vc.delegate = self
    }
    
    func passData(info: String)
    {
        labelA.text = info
    }

}
