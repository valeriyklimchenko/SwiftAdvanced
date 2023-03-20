//Хранимые свойства
class Circle {
    var radius: Double = 6
    var perimetr: Double {
        3.14 * radius
    }
}

Circle().perimetr
Circle().radius

struct HomeWork {
    
    var description: String   //Свойство
    
    init(_ description: String) {   //Передаваемый параметр
        self.description = description      //передаваемый параметр попадет в свойство, является экземпляром структуры
    }
}

let hw = HomeWork("work")
var AnnaHW = hw
hw.description

var DimaHW = AnnaHW
DimaHW.description
AnnaHW.description = "New hw"

AnnaHW.description
DimaHW.description //stuct - value тип, поэтому значение не поменяется у димы после изменения у Анны
//class - ссылочный тип, поэтому hw.description изменится и у димы тоже


//Проверка принадлежности экземпляра к типу
//is - проверяет принадлежность (true/false)
//as - приведение неизвестного типа к заданному

//for man in people {
//    if man is prophet {
//        print "есть пророк!"
//    }
//}
//
//if let gruzd = mushroom as? gruzdMoshroom {
//    gruzd.goToBag()
//}

let mix: [Any] = [
"Hello",
12,
11.232,
Float.pi,
Circle(),
Circle().radius
]

//for element in mix {
//    switch element {
//    case let int as Int:
//        print(int * int)
//    case let float as Float:
//        print(float * float)
//    case let string as String:
//        print(string)
//    case let exemp as Circle:
//        print("экземпляр класса \(exemp)")
//    default:
//        if Mirror(reflecting: Circle()).displayStyle == .class {
//            print("class")
//        } else {print("err")}
//
//    }
//}

//Тест
//1 +
class Hometask {
    var task: String
    init(task:String) {
        self.task = task
    }
}

struct Student {
    let task: Hometask
}

let lessonsTask1 = ("to do")
let lessonsTask = Hometask(task: "to do")

let Anna = Student(task: lessonsTask)
let sister = Anna
Anna.task.task
Anna.task.task = "dont"
Anna.task.task

//2 +
struct Hometask2 {
    var result: String
    init(reult: String) {
        self.result = reult
    }
}

var annaTask = Hometask2(reult: "Good")
var dimaTask = annaTask
dimaTask

annaTask.result = "Class"
dimaTask.result

//3 +
enum Name: String {
    case anna
    case dima
    case irina = "Irina"
    case misha = "Michael"
}

var student1 = Name.dima
var student2 = Name.misha
var student3 = Name.RawValue("irina")
//print(student3)
//print(Name(rawValue: "sdsf") as Any)
//print(Name.irina)

student2.rawValue
//student3?.RawValue
//4 +
struct Hometask4 {
    var result: String
    mutating func thinkAgain() {
        self.result = "new"
    }
}

var AnnaTask4 = Hometask4(result: "work")
var DimaTask4 = AnnaTask4

DimaTask4.result

AnnaTask4.result = "oops"

DimaTask4.thinkAgain()

DimaTask4.result

//5 + -
enum Name5: String {
    case anna
    case dima
    case irina = "Irina"
    case misha = "Michael"
}

var student51 = Name5.dima
var student52 = Name5.misha
var student53 = Name5.RawValue("Irisdna")
//print(Name5.RawValue("irina"))
//print(student3)
//print(Name(rawValue: "sdsf") as Any)
//print(Name.irina)
Name.irina.rawValue
//print(student53.RawValue)
//print(student2.rawValue)


//6 -

class Hometask6 {
    var task: String
    init(task:String) {
        self.task = task
    }
}

struct Student6 {
    let task: Hometask6
}

let lessonsTask6 = Hometask6(task: "to do")

let Anna6 = Student6(task: lessonsTask6)
let sister6 = Anna6
sister6.task.task
Anna6.task.task = "dont"
sister6.task.task

//7 +
//8 +
//9 +
