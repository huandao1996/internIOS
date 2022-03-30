//
//  HomePresenter.swift
//  MVP
//
//  Created by huan on 15/07/2021.
//

import Foundation


// day la delegate presenter dung de thong bao cho view update
// :class -> chir su dung delegate nay cho class
    protocol HomeViewProtocol: class {
    func selectedSuperHero(hero: SuperHero)
}

class HomePresenter {
//    // chu weak nay dung quan tam khi nua em su dc hoc
    weak var view: HomeViewProtocol?
//
    func seletedHero(hero: SuperHero) {
//        // xu li logic o day
//        // vd nhu anh chi can update ten
        let newHero = SuperHero(name: "David", age: hero.age)
//        xong roi thif ban thong bao lai cho view laf update xong
        view?.selectedSuperHero(hero: newHero)
//
    }
}

// co delegate roi gio phari ket noi no voi controller
