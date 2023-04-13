import Foundation
//Геттеры и сеттеры вычисляемых свойств
class Circle {
    
    var radius: Double
    
    var area: Double {
        get {
            return .pi * pow(radius, 2)
        }
        set {
            self.radius = sqrt(newValue / .pi)
        }
    }
    init(radius: Double) {
        self.radius = radius
    }
}

var circle = Circle(radius: 3)
circle.area

circle.area = 100
circle.radius
circle.area

var memory: String {
    get {
        UserDefaults.standard.string(forKey: "memory") ?? "string"
    }
    set  {
        UserDefaults.standard.set(newValue, forKey: "memory")
    }
}
//print(memory)
//memory = "Hello world"
//print(memory)



let firstName = "Ivan"
let surName = "Petrov"
var fullName = firstName + " " + surName

struct Profile {
    
    var firstName = "Ivan"
    let surName = "Petrov"
    
//    let fullName = firstName + " " + surName  //property initializers run before 'self' is available
    
//    let fullName: String
//    init() {
//        self.fullName = firstName + " " + surName
//    }
    
    var fullName: String { firstName + " " + surName }
        
//    init(fullName: String) {
//        self.fullName = fullName
    
//    var n = fullName
//    print(Profile.fullName)
    
}

Profile().fullName



//Наблюдатели свойств
var powerOn: Bool = false {
    willSet {
        if newValue {
            print("loading")
            print(newValue)
            sleep(1)
            print("ready")
            sleep(1)
        } else {
            print("living")
            sleep (1)
        }
    }
    didSet {
        if powerOn {
            print(oldValue)
            print("runOS")
        } else {
            print("goodby")
        }
    }
}
//powerOn = false
//powerOn = true
//powerOn = false



struct FullName {
    
    var firstName = "Ivan"
    var surname = "Petrov" {
        willSet {
            print(newValue)
        }
        didSet {
            print(oldValue)
        }
    }
    
}

var fullName1 = FullName()
fullName1.firstName = "Petr"
//fullName1.surname = "Ivanov"



//Методы классов
class Metod {
    func summ(a: Int, b: Int) -> Int {
        a + b
    }
    class func multiplied (a: Int, b: Int) -> Int {
        a * b
    }
}

var instanseMetod = Metod().summ(a: 3, b: 3)
var classMetod = Metod.multiplied(a: 3, b: 3)
//print(instanseMetod)
//print(classMetod)



//Generics
func square<T: Numeric>(_ num: T) -> T {
    num * num
}

square(3)
square(3.0)
 
