//Перечисления - тип данных с конечными типом уникальных значений. При компиляция значения case представляются целыми числами от 0, если не определен иной RawValue тип
//Объявление типа. enum описывает одно состояние (как radio button)
//Перечислния не могут содержать хранимые поля
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
    print(123)
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
    case sword(damage: Int, radius: Int)
    case shield(def: Double, radius: Int)
}

var armor = Item.shield(def: 13, radius: 5)

//Извлечение значени свойств из кейса экземпляра перечисления
if case let Item.shield(def, radius) = armor {
    print(def)
    print(radius)
}



//
//enum PaymentMetod {
//    case cash
//    case card(
//        number: String,
//        Name: String
//    )
//    case certificate(
//        number: String
//    )
//}
//
//var payment = PaymentMetod.card(number: "123", Name: "Ivan")
//
//switch payment {
//case .cash:
//    print("наличные")
//case .card(let number, let Name):
//    print("карта \(number), \(Name)")
//case .certificate(let number):
//    print("сертификат \(number)")
//}


//Опциональный тип
enum Name: String {
    case dima = "Дима"
}

let name = Name.dima
//print(name)
//print(name.rawValue)

let item = Name(rawValue: "Dima")
//print(item)  //Expression implicitly coerced from 'Name?' to 'Any'

let dima: Name? = Name(rawValue: "Dima")
//print(dima ?? "error")
//print(dima as Any)

let vazzgen: Name? = Name(rawValue: "Vazzgen")
//print(vazzgen)
//print(vazzgen ?? "nil")
//print(vazzgen as Any)



//Примеры перечислений

//enum FirstName {
//    case Irina
//    case Misha
//    case Ivan
//    case Dima
//}
//
//let Dima = FirstName.Irina
//
//switch Dima {
//case .Irina, .Misha:
//    fallthrough
//    print("Ирина, Миша")
//case .Ivan, .Dima:
//    print("Иван, Дима")
//}



enum Country: String {
    case russia = "Russia"
    case indonesia = "Indonesia"
    case thailand = "Thailand"
}

let russia = Country.russia.rawValue
//print(russia)
//print(type(of: russia))
//print(type(of: Country.indonesia))

let indonesia: Country? = Country(rawValue: "Indonesia")
//print(indonesia)
//print(indonesia as Any)
//print(indonesia ?? "error")
//print(type(of: indonesia))
//print(type(of: indonesia?.rawValue))
//print(type(of: Country.indonesia))

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
//print(car)
//
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

//print(car == .uaz)     //binary operator '==' cannot be synthesized for enums with associated values

//print(Country.russia == .russia)
//print(Country.russia)

//Как достать значения из перечисления без switch?
if case let .mercedes(pass) = car {
    print(pass)
}

