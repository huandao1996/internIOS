//
//  HomeVC.swift
//  MVP
//
//  Created by huan on 15/07/2021.
//

import UIKit

class HomeVC: UIViewController {
    
//    // day laf cach khoi tao presenter
    var presenter: HomePresenter?
//    // nay anh tao data fake de test
    var hero = SuperHero(name: "Dada", age: 123)
    init() {
        presenter = HomePresenter()
        super.init(nibName: "HomeVC", bundle: nil)
        presenter?.view = self
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @IBOutlet weak var displayHero: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        displayHero.text = hero.name
    }
//    // khi user nhan vao buton, view no keu presenter chon hero
//    // luc nay chon hero de lam gi thi thang presenter se xu li logic
    @IBAction func selectHero(_ sender: Any) {
        presenter?.seletedHero(hero: hero)
    }
}
extension HomeVC: HomeViewProtocol {
    // no se thong bao cho view tai day
    func selectedSuperHero(hero: newHero) {
        print(hero)
    }
    
}


