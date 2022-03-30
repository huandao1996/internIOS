import UIKit
//##########Answer1
class People{
    var hoTen: String
    var age: Int
    init(hoten: String, age: Int){   //Designate của class base
        self.hoTen = hoten
        self.age = age

    }
    convenience init() {             //Convenience của class base gọi Designate của class base
        self.init(hoten: "", age: 0)
    }
}

class Student:People {               // class super của class People
    var mssv: Int
    init(mssv: Int) {                //Designate của class super gọi Designate của class base
        self.mssv = mssv
        super.init(hoten: "A", age: 25)
    }
    convenience init(age: Int) {     //Convenience của class super gọi Designate của class base
        self.init(mssv: 1)
        self.age = age
    }
}
var a = People(hoten: "Huan", age: 25)
var b = People()
var c = Student(age: 8)
c.hoTen
c.mssv
c.age



