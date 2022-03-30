import UIKit

//class Animal {
//    var name: String = ""
//    func eat() {
//        print("animal is eating...")
//    }
//    var description: String {
//        return "this is an animal : \(self.name)"
//    }
//}
//class Cat: Animal {
//    var canClimb: Bool = true
//    func sayMeoMeo(){
//        print("say meo meo")
//    }
//    override func eat(){
//        super.eat()
//        print("Cat is eating")
//    }
//    override var description: String {
//        return"cat's name is \(super.description), can climb = \(self.canClimb)"
//    }
//}
//
//let animal = Animal()
//var myCat = Cat()
//
//myCat.name = "sunny"
//myCat.eat()
//print(myCat.description)

//class Car {
//    var color:String
//    var SoLuongGhe:Int
//    var SoBanh:Int
//    init (color: String, SoLuongGhe: Int, SoBanh: Int){
//        self.color = color
//        self.SoLuongGhe = SoLuongGhe
//        self.SoBanh = SoBanh
//    }
//}
//class Taxi: Car {
//    var CoTheBay: Bool
//    var VanToc: Double
//    init(VanToc: Double){
//        self.CoTheBay = false
//        self.VanToc = VanToc
//        super.init(color: "Trang",SoLuongGhe: 8, SoBanh: 4)
//    }
//    convenience init(CoTheBay: Bool, color: String){
//        self.init(VanToc: 80)
//        self.color = color
//        self.CoTheBay = CoTheBay
//    }
//    var description: String {
//        if CoTheBay == false{
//        print("color: \(self.color), SoLuongGhe: \(self.SoLuongGhe), SoBanh: \(self.SoBanh), VanToc: \(self.VanToc), CoTheBay: \(self.CoTheBay)")
//        }
//       }
//}
//
//var taxi1 = Taxi(CoTheBay: false, color:"Trang")
//var taxi2 = Taxi(CoTheBay: true, color: "Do")
//
//print(taxi1.description)
//print(taxi2.description)

//class HinhHoc {
//
//}
//
//protocol DienTichVuong {
//    func DienTichVuong(Canh: Double) -> Double
//}
//
//protocol DienTichTron {
//    func DienTichTron(BanKinh: Double) -> Double
//}
//
//
//protocol ChuViVuong {
//    func ChuViVuong(Canh: Double) -> Double
//
//}
//protocol ChuViTron {
//    func ChuViTron(BanKinh: Double) ->Double
//}
//
//class Vuong: HinhHoc, DienTichVuong, ChuViVuong {
////    var Canh: Double = 1
////    required init(Canh: Double) {
////        self.Canh = Canh
////    }
//    func ChuViVuong(Canh: Double) -> Double {
//        return 4 * Canh
//    }
//
//    func DienTichVuong(Canh: Double) -> Double {
//        return Canh * Canh
//    }
//
//}
//class Tron: HinhHoc, DienTichTron, ChuViTron {
////    var BanKinh: Double = 1
////    required init(BanKinh: Double) {
////        self.BanKinh = BanKinh
////    }
//    func DienTichTron(BanKinh: Double) -> Double {
//        return BanKinh*BanKinh*3.14
//    }
//
//    func ChuViTron(BanKinh: Double) -> Double {
//        return 2*BanKinh*3.14
//    }
//
//}
//
//var vuong1 = Vuong()
//vuong1.ChuViVuong(Canh: 5)
//vuong1.DienTichVuong(Canh: 5)
//var Tron1 = Tron()
//Tron1.ChuViTron(BanKinh: 5)
//Tron1.DienTichTron(BanKinh: 5)
//print("Nhap so")
//if let response = readLine() {
//    var a: Int = response
// } else {
//    print("Nothing")
// }
//enum Congty: Int{
//    case MobileDelevoper = 1, WebDeveloper, Tester, ProjectManager
//}
//var Staff:Congty = Congty(rawValue: a)!
//switch Staff {
//case .MobileDelevoper, .WebDeveloper:
//    print("code, fix bugs")
//case .Tester:
//    print("test,viet test, test plan, log bugs")
//case .ProjectManager:
//    print("quan li tien do, viet bao cao, meeting voi khach hang")
//}

// ####################################### 2/7/2021 ###############################
// tập sử dụng optional protocal
//
//class Project {
//
//}
//@objc protocol Dev {
//    @objc optional func code()
//    @objc optional func fixBugs()
//}
//
//@objc protocol Test{
//    @objc optional func vietTest()
//    @objc optional func testPlan()
//    @objc optional func logBug()
//}
//
//protocol Manager {
//    func quanLiTienDo()
//    func vietBaoCao()
//    func meeting()
//}
//
//class MobileDelevoper: Project, Dev {
//    func code() {
//        print("code")
//    }
//    func fixBugs(){
//        print("FixBugs")
//    }
//}
//
//class WebDeveloper: Project, Dev, Test {
//    func code() {
//        print("code")
//    }
//    func fixBugs(){
//        print("FixBugs")
//    }
//    func vietTest() {
//        print("web dev viet test")
//    }
//}
//
//class Tester: Project, Test {
//    func vietTest() {
//        print("viet test")
//    }
//
//    func testPlan() {
//        print("test plan")
//    }
//
//    func logBug() {
//        print("log bug")
//    }
//
//
//}
//class ProjectManager: Project, Manager, Dev, Test {
//    func fixBugs() {
//        print("Quản lí phụ dev fix bug")
//    }
//    func logBug() {
//        print("Quản lí phụ test log bug")
//    }
//
//    func quanLiTienDo() {
//        print("Quan li tien do")
//    }
//
//    func vietBaoCao() {
//        print(" viet bao cao")
//    }
//
//    func meeting() {
//        print("Meeting")
//    }
//}
//
//var manager1 = ProjectManager()
//manager1.fixBugs()
//manager1.logBug()
//
//var test1 = Tester()
//test1.logBug()
//test1.testPlan()
//test1.vietTest()
//var web = WebDeveloper()
//web.vietTest()
//###########################
//class Project {
//
//}
//@objc protocol Dev {
//     func code()
//     func fixBugs()
//}
//
//@objc protocol Test{
//    @objc optional func vietTest()
//    @objc optional func testPlan()
//    @objc optional func logBug()
//}
//
//protocol Manager {
//    func quanLiTienDo()
//    func vietBaoCao()
//    func meeting()
//}
//
//struct MobileDelevoper: Dev {
//    func code() {
//        print("code")
//    }
//    func fixBugs(){
//        print("FixBugs")
//    }
//}

