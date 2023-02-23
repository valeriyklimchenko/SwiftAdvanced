import UIKit

//protocol Pet {
//    var name: String { get }
//    var spicies: String { get }
//    var sex: String { get }
//
//    func eat()
//    func sleep()
//    func spendTimeWithOwner()
//}
//
//class Dog: Pet {
//
//    var name: String
//    var spicies: String = "Dog"
//    var sex: String
//
//    var breed: String
//
//    init(name: String, sex: String, breed: String) {
//        self.name = name
//        self.sex = sex
//        self.breed = breed
//    }
//
//    func eat() {}
//    func sleep() {}
//    func spendTimeWithOwner() {}
//
//    func play() {}
//    func waveTail() {}
//    func bark() { print("Bark by bass") }
//    func bite() {}
//}
//
//class Corgi: Dog {
//
//    init(name: String, sex: String) {
//        super.init(name: name, sex: sex, breed: "Corgi")
//    }
//
//    override func bark() {
//        super.bark()
//
//        print("Bark loudly")
//    }
//
//    func beNice() {}
//}
//
//func callAllElements(in sequence: any Sequence) -> Int {
//    var i = 0
//    sequence.forEach { _ in i += 1 }
//    return i
//}
//
//callAllElements(in: [1, 2, 3, 4, 5, 6])
//callAllElements(in: "Hello world")

//protocol ATM {
//    var balance: Int { get }
//
//    func enterPin(_ pin: Int)
//    func withdraw(sum: Int) -> Int?
//}
//
//class PermataATM: ATM {
//    var balance: Int { self.checkBalance() }
//
//    var pin: Int = 0
//    func enterPin(_ pin: Int) {
//        self.pin = pin
//    }
//
//    func withdraw(sum: Int) -> Int? {
//        guard pin != 0, checkBalance() == sum else {
//            return nil
//        }
//        return sum
//    }
//
//    private func checkBalance() -> Int {
//        return 100
//    }
//
//    private func checkPin(_ pin: Int) -> Bool {
//        return true
//    }
//}
//
//class ShoppingCenter {
//
//    var atm: ATM
//
//    let legalOffice: [String]
//
//    init(atm: ATM) {
//        self.legalOffice = ["Vasya", "Egor", "Sasha"]
//        self.atm = atm
//    }
//}
//
//let shoppingATM = PermataATM()
//let center = ShoppingCenter(atm: shoppingATM)

//protocol Bus {
//
//    var people: Int { get }
//}
//
//class CityBus: Bus {
//
//    var people: Int = 0
//}
//
//var busOnTheWay: Bus = CityBus()
////busOnTheWay.people = 10
////busOnTheWay.people += 10
//print(busOnTheWay.people)

//class Drawer {
//
//    func draw(_ result: Int) {
//        print(result)
//    }
//
//    func draw(_ result: String) {
//        print(result)
//    }
//
//    func draw(_ result: Bool) {
//        print(result)
//    }
//    func draw(_ result: Double) {
//        print(result)
//    }
//}
//
//Drawer().draw(1)
//Drawer().draw(0.20)
//Drawer().draw("Hello")

//class Phone {
//
//    func ring() {
//        print("Play monophony")
//    }
//
//    func tapSMS() {
//        print("Tapping an SMS")
//    }
//}
//
//class Smartphone: Phone {
//
//    override func ring() {
//        print("Play mp3")
//    }
//
//    override func tapSMS() {
//        super.tapSMS()
//
//        print("Add emoji")
//    }
//}
//Smartphone().tapSMS()

protocol Navigator {

    var enterPlace: String { get set }
    var checkDistance: Int { get }
}

class GoogleMaps: Navigator {
    
    var enterPlace: String = "" {
        didSet {
            checkDistance = 100
        }
    }
    var checkDistance: Int = 0
    
}

var googleMaps: Navigator = GoogleMaps()
googleMaps.enterPlace = "Batu Bolong"
print(googleMaps.checkDistance)
