////Инициализация
////init() {}
//
////struct Fahrenheit {
////    var temperature: Double
////    init(temperature: Double) {
////        self.temperature = temperature
////    }
////}
//
////Дефолтное значение свойств
//struct Fahrenheit {
//    var temperature: Double
//    init() {
//        temperature = 32
//    }
//}
//
//var f = Fahrenheit().temperature
//
////Значение свойств по умолчанию, вместо его объявления
////Использовать, если свойство каждый раз берет одно и то же значения
//
//struct Temperature {
//    var temperature = 15
//}
//
////Параметры инициализации имеют тот же синтаксис, что и функции, но не имеют своего имени до круглых скобок
//
//struct Celsius {
//    var celsius: Double
//    init(fromFahrenheit fahrenheit: Double) {
//        celsius = (fahrenheit - 32.0) / 1.8
//    }
//    init(fromKelvin kelvin: Double) {
//        celsius = kelvin - 273
//    }
//}
//
//var fromFar = Celsius(fromFahrenheit: 98)
////print(fromFar)
//var fromK = Celsius(fromKelvin: 309)
////print(fromK)
//
////Локальные и внешние имена параметров
////Без внешних имен нельзя вызвать инициализатор
//
//struct Color {
//
//    var red, green, blue: Double
//
//    init(red: Double, green: Double, blue: Double) {
//        self.red = red
//        self.green = green
//        self.blue = blue
//    }
//
//    init(white: Double){
//        red = white
//        green = white
//        blue = white
//    }
//}
//
//var gray = Color(white: 0.5)
//var any = Color(red: 0.3, green: 0.7, blue: 0.2)
////let err = Color(0.3, 0.7, 0.2)

//Параметры инициализатора без внешних имен

struct Fahrenheitt {
    var fahrenheit: Double
    init(_ f: Double) {
        fahrenheit = f
    }
}

let t = Fahrenheitt(100)
