//
//  объекты ООП.swift
//
//
//  Created by Валерий Климченко on 10.02.2023.
//

import Foundation
//Геттеры и сеттеры для вычисляемых свойств

struct User {
    var firstName: String
    var lastName: String
    var name: String {
        get {
            return firstName + " " + lastName
        }
        set(newValue) {
            // ???
        }
    }
}
//Вычисляемые свойства только для чтения

struct Circle {
    var radius: Double
    var circumference: Double {
        2 * .pi * radius
    }
}

// Инициализация
struct Materials {
    let brick: String
    let tile: String
    let concrete: String
    let steel: String
}

class House {
    private let basement: String
    private let roof: String
    private let walls: String
    init(materials: Materials) {
        self.walls = materials.brick
        self.roof = materials.steel
        self.basement = materials.steel + materials.concrete
    }
}

//class Weather {
//    var wind: Bool
//    var snow: Bool
//    var rain: Bool
//    init(wind: Bool, snow: Bool, rain: Bool) {}
//}

protocol ATM {
    func enterPin()
    func withdraw(sum: Double) -> Double
    var balanse: Double {get}  //только чтение
}
class PermataATM: ATM {
    var pin: Int = 0

    func enterPin() {
        self.pin = 1
    }
    func withdraw(sum: Double) -> Double {
        return 1.1    }
    var balanse: Double {self.checkBalance()}
    private func checkBalance() -> Double {
        return 100
    }
    private func checkPin() -> Bool {
        return true
    }
}

//let cangguATM = PermataATM()
//cangguATM.enterPin()
//cangguATM.checkPin()
//cangguATM.withdraw(sum: <#T##Double#>)
//cangguATM.checkBalance()

//let cangguATM: ATM = PermataATM()
//cangguATM.withdraw(sum: <#T##Double#>)
//cangguATM.enterPin()
//cangguATM.balanse

let cangguATM: ATM = PermataATM()
cangguATM.balanse
cangguATM.enterPin()
//cangguATM.withdraw(sum: <#Double#>)

//Объект
//PermataATM()

//Агрегация
class ShoppingCentr {
    var atm: ATM
    let legalOffice: [String]
    init(atm: ATM){
        self.atm = atm
        self.legalOffice = ["Vasya", "Petya"]
    }
}



//Композиция
//var shoppingATM: PermataATM
//var center = ShoppingCentr(atm: shoppingATM)
//var shoppingATM: PermataATM

//Перечисления

enum CompasPoint {
    case north
    case south
    case west
    case east
}

//enum Planet {
//    case Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune, Plutone
//}
//
//var planet2 = Planet.Venus
//planet2 = .Venus

var direction = CompasPoint.east
if direction == .north {
    print(1)
};if direction == .south {
    print(2)
};if direction == .west {
    print(3)
};if direction == .east{
    print(4)
}

switch direction {
case .north:
    print("switch1")
case .south:
    print("switch2")
case .west:
    print("switch3")
case .east:
    print("switch4")
}

//Associative value

enum BarCode {
    case upc(Int)
    case qrCode(String)
}

//Raw value (исходные значения)
enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

enum CompassPoint: String {
    case north, south, east, west
}

//Использоапние switch с where
enum Response {
    case error(Int, String)
    case succcess
}
let responseSuccess = Response.succcess

switch responseSuccess {
case .error(let code, let status) where code > 399:
    print(code, status)
case .error:
    print()
case .succcess:
    print("Запрос успешен")
}

//enum Response {
//    case error(Int, String)
//    case success
//}
//
//let httpResponse = Response.success
//
//switch httpResponse {
//case .error(let code, let status) where code > 399:
//    print("HTTP Ошибка: \(code) \(status)")
//case .error:
//    print("HTTP запрос неуспешен")
//case .success:
//    print("HTTP запрос успешен")
//}

// HTTP запрос успешен
