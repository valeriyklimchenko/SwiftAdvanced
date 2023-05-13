
protocol Descriptive {
    var description: String { get }
}

struct Anarchy: Descriptive {
    let description: String = "I am mother"
}

class `Protocol`: Descriptive {
    var description: String = "I am father"
}

//Перечисления не могут содержать хранимых свойств
enum Order: Descriptive {
    case son
    var description: String { "I am child" }
}


let family: [Descriptive] = [   // Подписали массив на протокол и все его элементы будут иметь соответствующий тип
    Anarchy(),
    `Protocol`(),
    Order.son
]

_ = family.map { print($0.description) }

//Способы композиции (объединения) протоколов

protocol Named {
    var name: String { get }
}

protocol Aged {
    var age: Int { get }
}

struct Person: Named, Aged {
    var name: String
    var age: Int
}

func withHappyBirthday(to celebrate: Named & Aged) {
    print("Happy birthday, \(celebrate.name), you` re \(celebrate.age)!")
}
withHappyBirthday(to: Person(name: "Mike", age: 18))
