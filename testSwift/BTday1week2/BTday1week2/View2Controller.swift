//
//  View2Controller.swift
//  BTday1week2
//
//  Created by huan on 06/07/2021.
//

import UIKit

class View2Controller: UIViewController {

    @IBOutlet weak var txtData: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func moveBack2(_ sender: Any) {
        self.performSegue(withIdentifier: "main2ToMain1", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "main2ToMain1" {
            let viewController = segue.destination as! ViewController
            viewController.textFormMainVC = txtData?.text ?? ""
        }
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
