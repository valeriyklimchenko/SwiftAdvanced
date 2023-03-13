////Value type
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
//class HomeWork {
//    var task: String
//    init(task: String) {
//        self.task = task
//    }
//}
//
//struct Student {
//    let answer: HomeWork
//}
//
//let valueTipeTask = HomeWork(task: "Do it")
//let annaReferenceTipeTask = Student(answer: valueTipeTask)
//let dimaReferenceTipeTask = Student(answer: valueTipeTask)
//
//print(annaReferenceTipeTask.answer.task) //"Do it"
//print(dimaReferenceTipeTask.answer.task) //"Do it"
//
//valueTipeTask.task = "Dont do it" //конастанта
//print(annaReferenceTipeTask.answer.task) //"Dont do it"
//print(dimaReferenceTipeTask.answer.task) //"Dont do it"

//Мутация
struct HomeWork {
    var result: String
    mutating func thinkAgain() {
        self.result = "New answer"
    }
}

var annaTask = HomeWork(result: "1")
var dimaTask = annaTask

print(annaTask.result) //1
print(dimaTask.result) //1

annaTask.result = "2"

print(annaTask.result) //2
print(dimaTask.result) //1

dimaTask.thinkAgain()

print(annaTask.result) //2
print(dimaTask.result) //New answer

