
import UIKit
class ViewController: UIViewController {
    
    var names: [String] = ["Tí",
                          "Tèo",
                          "Hùng",
                          "Lam",
                          "Thuỷ",
                          "Tuấn",
                          "Trung",
                          "Hạnh"]
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        tableview.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
                //delegate & datasouce
                tableview.delegate = self
                tableview.dataSource = self
        
    }
}
extension HomeViewController : UITableViewDelegate, UITableViewDataSource {
    
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
