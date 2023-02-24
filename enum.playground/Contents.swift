//Объявление типа
enum ControllerState {
    case loading
    case loaded
    case error
}

//Создание Объекта
let current = ControllerState.error

//Определение значения объекта
switch current {
case .error:
    print()
default:
    print("error")
}

switch current {
case .loading:
    print()
case .loaded:
    print()
case .error:
    print()
}

//Raw value - это тип значений элементов перечисления. Внутри этого перечисления значения кейсов будут только Int
enum RawValue: Int {
    case rawValue
}

enum Exemple: String {
    case exemple = "Inna"
}
var inna = Exemple.exemple
//print(inna.rawValue)

//Associative value - значения внутри кейсов
// - значения, ассоциированные с этим кейсом (параметры кейса)
enum Item {
    case sword(Int, Int)
    case shield(Double, Int)
}

var armor = Item.shield(5, 3)


//Опциональный тип
enum Name: String {
    case dima = "Dima"
}

let name = Name.dima

let item = Name(rawValue: "Dima")
//print(item)  //Expression implicitly coerced from 'Name?' to 'Any'

let dima: Name? = Name(rawValue: "Dima")
//print(dima ?? "error")
//print(dima as Any)

let vazzgen: Name? = Name(rawValue: "Vazzgen")
//print(vazzgen)
//print(vazzgen ?? "nil")
//print(vazzgen as Any)

enum Country: String {
    case russia = "Russia"
    case indonesia = "Indonesia"
    case thailand = "Thailand"
}

let russia = Country.russia.rawValue
//print(russia)
//print(type(of: russia))
//print(russia == "Indonesia")

let indonesia: Country? = Country(rawValue: "Indonesia")
//print(indonesia)
//print(indonesia as Any)
//print(indonesia ?? "error")
//print(type(of: indonesia))
//print(type(of: indonesia?.rawValue))

/*
Изменил немного пример перечисления Country с прошлого вебинара. Не совсем понимаю чем отличается объявление russia и indonesia и что происходит в print после объявления indonesia (и что значит "__lldb_expr_372" в выводе).
 Очень хочется чтобы понимание пришло


 enum Country: String {
     case russia = "Russia"
     case indonesia = "Indonesia"
     case thailand = "Thailand"
 }

 let russia = Country.russia.rawValue

 let indonesia: Country? = Country(rawValue: "Indonesia")
 print(indonesia)
 print(indonesia as Any)
 print(indonesia ?? "error")
*/

enum Car {

    case mercedes(numperOfPass: Int)
    case uaz
}

let car = Car.mercedes(numperOfPass: 3)

//switch car {
//case let .mercedes(numberOfPass):
//    print(numberOfPass)
//case .uaz:
//    print("uaz")
//}
//
//switch car {
//case .mercedes:
//    print("mercedes")
//case .uaz:
//    print("uaz")
//}

let cars = Car.uaz
//print(cars == .uaz)     //binary operator '==' cannot be synthesized for enums with associated values

//Как достать значения из перечисления без switch?
//if case let .mercedes(pass) = car {
//    print(pass)
//}

