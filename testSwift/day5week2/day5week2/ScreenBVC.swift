//
//  ScreenBVC.swift
//  day5week2
//
//  Created by huan on 09/07/2021.
//

import UIKit
// protocol used for sending data back
protocol DataEnteredDelegate: class {
    func userDidEnterInformation(info: String)
}
class ScreenBVC: UIViewController, DataEnteredDelegate {
    
    weak var delegate: DataEnteredDelegate?
    
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func ButtonB(_ sender: Any) {
        let vc2 = ScreenAVC(nibName: "ScreenAVC", bundle: nil)
        navigationController?.pushViewController(vc2, animated: true)
        delegate?.userDidEnterInformation(info: textField.text ?? "")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
