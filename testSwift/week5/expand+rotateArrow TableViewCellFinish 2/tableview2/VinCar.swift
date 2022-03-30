//
//  VinCar.swift
//  tableview2
//
//  Created by huan on 01/08/2021.
//

import UIKit

class VinCar: UIViewController {

    @IBOutlet weak var vinfastTable: UITableView!
    var names: [String] = ["VinA",
                              "VinB",
                              "VinC",
                              "VinD",
                        ]
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Vinfast"
        vinfastTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        vinfastTable.delegate = self
        vinfastTable.dataSource = self
        
    }
    

}
extension VinCar : UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
            
            return cell
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected cell: \(names[indexPath.row])")
    }
    
    
}
