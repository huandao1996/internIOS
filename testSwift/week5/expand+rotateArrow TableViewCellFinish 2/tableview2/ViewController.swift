//
//  ViewController.swift
//  tableview2
//
//  Created by huan on 30/07/2021.
//
import UIKit
struct cellData {
    var opened: Bool
    var title: String
    var sectionData: [String]
}
class ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!

    var tableViewData: [cellData] = []
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Hãng"
        tableview.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableview.delegate = self
        tableview.dataSource = self
        tableViewData = [cellData(opened: false, title: "Vinfast", sectionData: ["VinA", "VinB", "VinC", "VinD"]),
                         cellData(opened: false, title: "Honda", sectionData: ["Honda A", "Honda B"]),
                         cellData(opened: false, title: "Toyota", sectionData: ["Toyota A", "Toyota B", "Toyota C"])]
        let nib = UINib(nibName: "TableCell", bundle: .main)
        tableview.register(nib, forCellReuseIdentifier: "cell")
        tableview.rowHeight = UITableView.automaticDimension
        tableview.estimatedRowHeight = 100
        
        
       
    }


  

}
extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return tableViewData.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableViewData[section].opened {
                    return tableViewData[section].sectionData.count + 1
                } else {
                    return 1
                }
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? TableCell else { return UITableViewCell() }
            cell.lbTextCell.text = tableViewData[indexPath.section].title
            cell.backgroundColor = .blue
            cell.lbImageCell.image =  UIImage(systemName: "arrowtriangle.down.fill")
            cell.lbImageCell.isHidden =  indexPath.row != 0 || tableViewData.count <= 2
            if tableViewData[indexPath.section].opened{
            cell.lbImageCell.transform = CGAffineTransform(rotationAngle: (180.0 * .pi) / 180.0)
            }else{
            cell.lbImageCell.transform = .identity
            }
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? TableCell else { return UITableViewCell() }
            cell.lbTextCell.text = tableViewData[indexPath.section].sectionData[indexPath.row - 1]
            cell.backgroundColor = .white
            cell.lbImageCell.isHidden = true
            return cell
        }
        
      }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! TableCell
        cell.lbImageCell.transform = CGAffineTransform.init(rotationAngle: CGFloat.pi)
        
        if  tableViewData[indexPath.section].opened  {
               tableViewData[indexPath.section].opened = false
               let sections = IndexSet.init(integer: indexPath.section)
               tableView.reloadSections(sections, with: .none)

               
           } else {
            tableViewData[indexPath.section].opened = true
                let sections = IndexSet.init(integer: indexPath.section)
                tableView.reloadSections(sections, with: .none)
            
           }
       }
}

