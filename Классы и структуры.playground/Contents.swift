//Объявление

struct SomeStruct {
    var height = 0
}

class SomeClass {
    var options = SomeStruct()
}


//Экземпляры
let classInstance = SomeClass()
let structInstance = SomeStruct()

//Доступ к свойствам. Точечный синтаксис
classInstance.options.height = 2
var n = classInstance.options.height
print(n)

SomeClass().options.height
SomeStruct().height
classInstance.options.height

//Value type
//struct HomeWork {
//   var result: String
//}
//
//var annaTask = HomeWork(result: "1")
//var tommyTask = annaTask
//
//annaTask.result = "2"
//
//print(annaTask.result) //2
//print(tommyTask.result) //1

////Reference Type
class HomeWork {
    var task: String
    init(task: String) {
        self.task = task
    }
}

struct Student {
    let answer: HomeWork
}

let valueTipeTask = HomeWork(task: "Do it")
let annaReferenceTipeTask = Student(answer: valueTipeTask)
let dimaReferenceTipeTask = Student(answer: valueTipeTask)

print(annaReferenceTipeTask.answer.task) //"Do it"
print(dimaReferenceTipeTask.answer.task) //"Do it"

valueTipeTask.task = "Dont do it" //конастанта
print(annaReferenceTipeTask.answer.task) //"Dont do it"
print(dimaReferenceTipeTask.answer.task) //"Dont do it"

//Мутация
struct HomeWork1 {
    var result: String
    mutating func thinkAgain() {
        self.result = "New answer"
    }
}

var annaTask = HomeWork1(result: "1")
var dimaTask = annaTask

print(annaTask.result) //1
print(dimaTask.result) //1

annaTask.result = "2"

print(annaTask.result) //2
print(dimaTask.result) //1

dimaTask.thinkAgain()

print(annaTask.result) //2
print(dimaTask.result) //New answer



//Усов

struct Players {
    var name = "player"
    var wins = 0
}

var ivan = Players(name: "Ivan", wins: 3)
var player = Players()
print(ivan, player)


class First {
    var first: Int
    init(first: Int) {
        self.first = first
    }
}

class Second: First {
    
}

class Third: Second {
    
}

var copyFirst = First(first: 1).first
print(copyFirst)

var copySecond = Second(first: 2).first
print(copySecond)

var copyThird = Third(first: 3).first
