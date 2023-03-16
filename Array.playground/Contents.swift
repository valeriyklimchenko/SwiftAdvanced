//Массив - тип коллекции, упорядоченный набор элементов одного типа данных
//Способы объявления массива

let first = [1]
let second = [Int]()
let third = Array<Int>.init()

let fourth: [String]? = []
let fifth: Array<Int> = Array()
let sixth: Array<Int> = []

let eighth = [Int](1...7)
let ninth = Array(3..<7)

let tenth = [Int](repeating: 1, count: 10)
var eleventh = Array(repeating: "count", count: 3)
eleventh[0] = "name"
eleventh

//Доступ к элементам массива
var numbers: [Int] = [1, 2, 3, 12, 7, 12, 7, 12]
numbers
//numbers[0] = 11
numbers

numbers.first
numbers.endIndex
numbers.indices
var ind = numbers.first
numbers.firstIndex(of:89)

numbers.removeAll(where: {n -> Bool in return n == 12 })
numbers

numbers.removeAll(where:{$0 > 30})
numbers

//Размер массива
numbers.count
numbers.isEmpty

//Перебор массива
for n in numbers { n    }

//for n in 0 ..< numbers.endIndex-3 {  //numbers.count
////    print(numbers[n])
//}

//numbers[numbers.endIndex - 1]

//for i in numbers 0 ..< numbers.count {
//    print(i)
//}

//Перебор массива методом forIch
//for numbers.forEach({numbers in print(numbers)
//})

//Операции с массивами
let friends = ["Vasia", "Misha"]
var dearFriends: [String] = []
for i in friends {
    let dear = "Dear \(i)"
    dearFriends.append(dear)
}
print(dearFriends)

//Метод enumerated позволяет получить не только элемент массива, но и его индекс

//for (index, friend) in friends.enumerated() {
//    print("У элемента массива \(friend) индекс \(index)")
//}

for friend in friends.enumerated() {
    print("У элемента массива \(friend.element) индекс \(friend.offset)")
}

//Сравнение массивов ==
//Копирование массивов =
//Добавление в массив. append() - в конец, insert() - в конкретное место

numbers
numbers.append(16)
numbers.insert(17, at: numbers.endIndex)
numbers.insert(10, at: numbers.startIndex)
numbers.insert(10, at: 1)

//Удаление из массива
numbers
numbers.removeFirst()
numbers
numbers.removeLast()
numbers.remove(at: 0)
numbers

let drop = numbers.dropFirst(3) //Удаляет без мутации, то есть в исходном массиве ничего не меняется
numbers
drop

//Удаление повторяющихся значений из массива
numbers
Array(Set(numbers))


//Сортировка. sort меняет в исходном массиве, sorted не меняет, а создает новый

var count = [4, 65, 23, 54, 87, 23]
count.sort()
var sorted = count.sorted(by: >)
count

//Объединение массивов
numbers += count
numbers.append(contentsOf: count)

//Фильтрация массивов. Создается новый массив без части элементов
//filter - отбирает по всем элементам
//prefix - отбирает до первого не подходящего под условие
//drop - отбрасывает значения, пока условие не выполнится

numbers = [Int](0 ..< 10)
var filter = numbers.filter({$0 < 5})
filter
numbers

var prefix = numbers.prefix(while: {$0 < 5})
prefix
numbers

var dr = numbers.drop(while: {$0 < 5})
dr
numbers

//Преобразование массивов
let squaringNumbers = numbers.map({$0 * $0})
numbers
squaringNumbers

let stringNumbers = numbers.map({String($0)})
numbers
stringNumbers
let stringNum = numbers.map({n in String(n)})
numbers
stringNum
let stringN = numbers.map({n -> String in return String(n)
})
numbers
stringN

func timesTen(x: Int) -> Int { x * 10 }
numbers
var result = numbers.map(timesTen)


//Многомерные массивы - массив в массиве
var arrayArray = [[1, 2, 3], [1, 2, 3]]
arrayArray[1][1] = 3
arrayArray

let array = arrayArray.flatMap({$0})
array

