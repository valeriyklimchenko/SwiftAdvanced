//Приготовление яичницы
protocol Recipe {
    var eggs: Int {get set}
    func prepareEggs()
}

class ScrambledEggs: Recipe {
    var eggs: Int = 2
    func prepareEggs() {
        smashEggs(egg: eggs)
    }
    private func smashEggs(egg:Int) {}
}

class ScrambledDinosaurEggs: ScrambledEggs {
    override init() {
        var _: Int = 2
    }
    override func prepareEggs() {
        func findDinosaur() {}
        func stealEggs(egg:ScrambledEggs) {}
        func run() {}
    }
    private func findDinosaur() {}
    private func stealEggs() {}
    private func run() {}
}

//get set
class Family {
    var members0: Int = 2
    var members: Int {
        get {
            return members0}
        set(newValue) {
            if newValue >= 2 {
                members0 = newValue
            }
            else {
                print("must be >=2")
            }
        }
    }

}

protocol ExempleProtocol {
    var exempleVar: Int { get set }
}
class ExepleClass: ExempleProtocol {
    var exempleVar: Int = 10
}
var newExemple: ExempleProtocol = ExepleClass()
newExemple.exempleVar = 20

protocol Bus {
    var people: Int { get set }
}
class CityBus {
    var people: Int = 10
}
//var peopleInBus: Bus = CityBus()
//peopleInBus.people += 10


protocol Navigator {
    var enterPlace: String { get set }
    var checkDistance: Int { get }
}
class GoogleMaps: Navigator {
    var enterPlace: String = " " {
        didSet {
            checkDistance = 100
        }
    }
    var checkDistance: Int = 0
}
var googleMaps: Navigator = GoogleMaps()
googleMaps.enterPlace = "Arab Emirates"
print(googleMaps.checkDistance)


//Переопреднление
class Exemple {
    func display() {
//        print("text1")
    }
}
class Overider: Exemple {
    override func display() {
        super.display() 
        print("text2")
    }
}

class Phone {
    func ring() {
        print("play polyphony")
    }
    func tapSMS() {
        print("Tapping an SMS")
    }
}
class Smartpoone: Phone {
    override func ring() {
        print("play mp3")
    }
    override func tapSMS() {
//        print("Tapping an SMS")
        super.tapSMS()
        print("add emoji")
    }
}
Smartpoone().tapSMS()

//Пример переопределения swift.book
class Vehicle {
    var currentSpeed: Double = 0
    var description: String {
        return "скорость \(currentSpeed) км/ч"
    }
    func makeNoise() {}
}
var vehicleSpeed = Vehicle()
print(vehicleSpeed.description)

class Bicycle: Vehicle {
    var hasBasket: Bool = false
}
var bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 10
print(bicycle.description)

class Train: Vehicle {
    override func makeNoise() {
        print("чу-чу")
    }
}
var train = Train()
train.makeNoise()

class Getter {
    var get: Int {
        get {
            return 1
        }
    }
}
class Setter: Getter {
    override var get: Int {
        get {
            return 1
        }
        set {
//            var newValue: Double
    }
    }
}

class Car: Vehicle {
    var gear: Int = 1
    override var description: String {
        return super.description + " на передаче \(gear)"
    }
}
var car = Car()
print(car.description)



//Перегрузка
class Writer {
    func write(_ result: Int) {
        print(result)
    }
    func write(_ result: Double) {
        print(result)
    }
    func write(_ result: String) {
        print(result)
    }
    func write(_ result: Character) {
        print(result)
    }
    func write(_ result: Bool) {
        print(result)
    }
}

Writer().write("hello")
Writer().write("0.2")
Writer().write("1")


//Наблюдатели willSet и didSet
//class StepCounter {
//    var totalStep: Int = 0 {
//        willSet(newTotalStep) {
//            print("пройдено \(newTotalStep) шагов")
//        }
//        didSet {
//            if totalStep > oldValue {
//                print("добавлено \(totalStep - oldValue) шагов")
//            }
//        }
//    }
//}
//var stepCounter = StepCounter()
//stepCounter.totalStep = 20

class StepCounter {
    var totalStep: Int = 0 {
        willSet(newTotalStep) {
            print("количество шагов \(newTotalStep)")
        }
        didSet {
            if totalStep > oldValue {
                print("пройдено шагов \(totalStep - oldValue)")
            }
        }
    }

}
var stepCounter = StepCounter()
stepCounter.totalStep = 100





























