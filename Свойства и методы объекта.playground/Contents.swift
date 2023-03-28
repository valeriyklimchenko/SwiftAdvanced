import Foundation

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



var powerOn: Bool = false {
    willSet {
        if newValue {
            print("loading")
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
            print("runOS")
        } else {
            print("goodby")
        }
    }
}
//powerOn = false
//powerOn = true
//powerOn = false


//Generics
func square<T: Numeric>(_ num: T) -> T {
    num * num
}

square(3)
square(3.0)
 
