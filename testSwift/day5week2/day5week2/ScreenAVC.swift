//
//  ScreenAVC.swift
//  day5week2
//
//  Created by huan on 09/07/2021.
//

import UIKit

class ScreenAVC: UIViewController {
    // o tren nay no tao cho minh cai probertis
    @IBOutlet weak var btnMove: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // bua hoc viewDidload de setup UI vaf callApi,
        // thif setup UI o day
        btnMove.setTitle("Move to Screen B", for: .normal)
    }
    // anh xa cho UI cua mimnh nhu nay, o duoi ViewDidLoad no se tu dong cho minh la action cua buton
   
//        window.rootViewController = UINavigationController(rootViewController: ScreenAVC())
    //hien tai cai stack cua minh chi co screenB
    func userDidEnterInformation(info: String) {
            label.text = info
            navigationController?.popViewControllerAnimated(true)
        }
    
    @IBAction func tapAction(_ sender: UIButton) {
        // can than nib name nay rat de gay crash
        
        
        let vc = ScreenBVC(nibName: "ScreenBVC", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
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
