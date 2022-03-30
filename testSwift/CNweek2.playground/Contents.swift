import UIKit

var str = "Hello, playground"

struct Cookie {
    var size:Int = 5
    var hasChocolateChips:Bool = false
}

class Bakery {
    var delegate: BakeryDelegate?

    func makeCookie() {
        var cookie = Cookie()
        cookie.size = 6
        cookie.hasChocolateChips = true

        delegate?.cookieWasBaked(cookie)
    }
}

protocol BakeryDelegate {
    func cookieWasBaked(_ cookie: Cookie)
}

class CookieShop: BakeryDelegate {
    func cookieWasBaked(_ cookie: Cookie) {
        print("Yay! A new cookie was baked, with size \(cookie.size)")
    }
}
let shop = CookieShop()

let bakery = Bakery()
bakery.delegate = shop

bakery.makeCookie()
