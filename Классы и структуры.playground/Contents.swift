//Value type
//struct HomeWork {
//   var result: String
//}
//
//var annaTask = HomeWork(result: "1")
//var tommyTask = AnnaTask
//
//annaTask.result = "2"
//
//print(annaTask.result) //2
//print(tommyTask.result) //1

//Reference Type
//class HomeWork {
//    var task: String
//    init(task: String) {
//        self.task = task
//    }
//}

//struct Student {
//    let answer: HomeWork
//}
//
//let lessonsTask = HomeWork(task: "Do it")
//let annaTask = Student(answer: lessonsTask)
//let dimaTask = Student(answer: lessonsTask)
//
//print(annaTask.answer.task) //"Do it"
//print(dimaTask.answer.task) //"Do it"
//
//lessonsTask.task = "Dont do it" //конастанта
//print(annaTask.answer.task) //"Dont do it"
//print(dimaTask.answer.task) //"Dont do it"

//Мутация
//struct HomeWork {
//    var result: String
//    mutating func thinkAgain() {
//        self.result = "New answer"
//    }
//}
//
//var annaTask = HomeWork(result: "1")
//var dimaTask = annaTask
//
//print(annaTask.result) //1
//print(dimaTask.result) //1
//
//annaTask.result = "2"
//
//print(annaTask.result) //2
//print(dimaTask.result) //1
//
//dimaTask.thinkAgain()
//
//print(annaTask.result) //2
//print(dimaTask.result) //New answer


//
