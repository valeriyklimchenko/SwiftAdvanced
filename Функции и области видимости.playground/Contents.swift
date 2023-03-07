//import UIKit
//Без параметров
func displaySun() {}

//Входящие параметры
//func save(file: Data) {}

//Возвращаемые параметры
func timesTen(_ x:Int) -> Int {
   return x * 10
}


//Выходное значение функции может быть игнорировано (вторая функция вызывает первую, но игнорирует ее ворзвращаемое значение

func printAndCount(hi: String) -> Int {
    print(hi)
    return hi.count //return нельзя опустить, так как 2 строки
}

//print(printAndCount(hi: "hi"))
//hi
//2

func printWhithoutCount(hello: String) -> Int {
    printAndCount(hi: hello)    //return опускаем
}

//printWhithoutCount(hello: "Hello world")
//Hello world


//Вызов функции
displaySun()

//Значения по умолчанию (указывать в конце
func calculateFuelFly(dist: Double, Weight: Int = 200, k: Double = 0.145) ->Int {
    return Int(Double(Weight) * dist * k)
}

calculateFuelFly(dist: 100)

//Ярлыки для названия параметров
//При вызове функции можно писать не название параметра, а ярлык

var fruits = ["apple", "banana"]

func fruit(i index: Int) -> String {
    return fruits[index]
}

let apple = fruit(i: 0)
//print(apple)

//Ярлык-невидимка _
//Называние параметра/ярлыка не будет указываться при вызове функции

func displayNumber(_ number: Int, count: Int = 2) -> Int {
    return(number)
//    print(number)
}

//print(displayNumber(1))

//return можно не писать, если у функции есть возваращаемый параметр и выполняет 1 действие

func noReturn(_ number: Int, count: Int = 2) -> Int {
    number * count
}

//Оператор inout - позволяет изменять параметры внутри функции, иначе они константы

func squaring(n number: Int) -> Int {
    number * number
}
squaring(n: 4)

func squaringInput(number: inout Int) {
    number *= number
}
var no = 10 //передаваемый параметры должен быть var
squaringInput(number: &no) //при вызове функции указываем & перед переменной

//Области видимости - механизм ограничения доступа из других модулей
//Сущность не может быть определена в условиях другой, если она имеет более низкий уровень видимости => переменные не видны за пределами функции

//private - ограничен объектом
//fileprivate - ограничен .swift файлом
//internal - ограничен модулем/приложением
//public - не ограничен
//open - как public, но есть возможность наследоваться и переопределять  в другом модуле



