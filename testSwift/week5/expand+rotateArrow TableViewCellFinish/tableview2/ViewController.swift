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
    
    var cells = [TableCell]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Hãng"
//        tableview.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableview.delegate = self
        tableview.dataSource = self
        let nib = UINib(nibName: "TableCell", bundle: .main)
        tableview.register(nib, forCellReuseIdentifier: "cell")
        tableview.rowHeight = UITableView.automaticDimension
        tableview.estimatedRowHeight = 100
        setupCell()
    }
    func setupCell() {
            for _ in 0 ... 3000 {
                let cell = Bundle.main.loadNibNamed("TableCell", owner: self, options: nil)?[0] as! TableCell
                cells.append(cell)
            }
        }
}
extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableCell
        cell.lbTextCell.text = "\(indexPath.row)"
        return cell
        
        
      }

    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let cell = tableView.cellForRow(at: indexPath) as! TableCell
//        cell.lbImageCell.transform = CGAffineTransform.init(rotationAngle: CGFloat.pi)
//
//        if  tableViewData[indexPath.section].opened  {
//               tableViewData[indexPath.section].opened = false
//               let sections = IndexSet.init(integer: indexPath.section)
//               tableView.reloadSections(sections, with: .none)
//
//
//           } else {
//            tableViewData[indexPath.section].opened = true
//                let sections = IndexSet.init(integer: indexPath.section)
//                tableView.reloadSections(sections, with: .none)
//
//           }
//       }
}

