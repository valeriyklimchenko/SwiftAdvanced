//Словарь - хранилище объкетов, обращение к которым построено по уникальному ключу.
//Не упорядочен

//Способы объявления словаря
var phones1: [String: String] = [:]
var phones2: Dictionary <String, String> = [:]
var phones3 = [String: String]()

var phones: [String: [String]] = ["Apple": ["iPhone X", "iPhone8"]]
var englRusDictionarty = [
    "table": "стол",
    "face": "лицо",
    "quantity": "количество"
    ]

//Доступ к значениям
phones.isEmpty
phones.count
let phone = phones["Apple"] //значение будет опциональным [String]? => нужно проверять

//Удаление значения. При отсутствиии ключа ощибки не будет
//phones.removeValue(forKey: "Apple")
//phones
//phones["Apple"] = nil
//phones

//Обновление значений
englRusDictionarty["apple"] = "яблоко"
englRusDictionarty
englRusDictionarty.updateValue("груша", forKey: "pear")
englRusDictionarty

//Перебор словаря
for (key, value) in englRusDictionarty {
    key; value}

englRusDictionarty.forEach{(key, value) in}

//Перебор ключкй и значений отдельно
for key in englRusDictionarty.keys {
    key}

for value in englRusDictionarty.values {
    value
}

//Преобразование
var dict = englRusDictionarty.map{key, value in return "\(key) - \(value)"}
print(dict)
print(englRusDictionarty)

var oldDictionary = ["Dollar": 69, "Euro": 83]
var newDictionary = oldDictionary.mapValues{ value in return value + 1}
print(newDictionary)




//Создание словаря из словаря массивов
var countries = ["Russia", "GB", "Germany"]
//let countries = ["Russia", "GB", "Russia"]

let capitals = ["Moscow", "London", "Berlin"]

let zip2Sequence = zip(countries, capitals)
let countriesAndThereCapitals = (Dictionary(uniqueKeysWithValues: zip2Sequence))

//Если нужно выбрать второе спорное значение ключа
var newDict = Dictionary(zip2Sequence, uniquingKeysWith: {aValue, bValue in return bValue})

var dDict = Dictionary(zip2Sequence, uniquingKeysWith: { $1 })
print(newDict)

//let russia = Dictionary(grouping: countries, by: key)




//Кортеж (tuple) - один объект, который может включать несколько различных значений

let tuple1: (String, Int) = ("Tom", 23)
//let name = tuple1.0
//let age = tuple1.1

let (name, age) = tuple1
let (_, ageTom) = tuple1

//Именованный кортеж

let tuple2 = (name: "Tom", age: 23)
tuple2.name
tuple2.age



//Множества - неупорядоченные коллекции уникальных элементов (2 отличия от множества)

//Способы объявления
var set1:Set<Int> = []
var set2: Set<Int> = [1, 2, 3, 7]

var set3 = Set<Int>()
var set4 = Set([1, 2, 3, 7])

//Сравнение
let array1 = [1, 2, 3, 7]
let array2 = [1, 2, 7, 3]
array1 == array2

let set5: Set = [1, 2, 3, 7]
let set6: Set = [1, 2, 7, 3]
set5 == set6

let set7 = Set(array1)
//let set8 = Set(array1Literal: 2, 5, 6, 9, 2)

//Работа со множествами
var set9: Set = [1, 2, 3, 7]
set9.insert(10)
set9

set9.remove(10)
set9
//set9.removeAll()
//set9
set9.removeFirst()
set9

set9.contains(7)    //Есть ли такой элемент?

//Преобразование в массив

var array3 = set9.sorted()
var array4 = Array(set9)

//Операции со множествами
//intersection()  - пересечение - возвращает общие элемениы
//symmetricDifference() - симметрическая разность - возвращает не общие для обоих элементы
//union() - объединение двух множеств
//substract - разность множеств - возвращает элементы первого, которых нет во втором

var a: Set = [1, 2, 3, 4, 5, 6, 7]
var b: Set = [4, 5, 6, 7, 8, 9]
a.intersection(b)
a.symmetricDifference(b)
a.union(b)
a.subtract(b)

//Цикл for-in

let range: ClosedRange<Int> = 1...5
for i in range {
    print(i)
}

for i in range where i % 2 == 0 {
    print(i)
}


//Цикл While - сначала проверяет условие, затем выполняет цикл
var i = 0
while i < 10 {
    i += 1
//    print(i)
}

//Цикл repeat-While - 1 раз выполняет цикл, затем проверяет условие
repeat {
    i += 1
//    print(i)
} while i < 10

//break - позволяет выйти из цикла
//continue - позволяет перейти к следующему элементу





