
func function (_ name: String) -> String {
    "Name is \(name)"
}

var closure = { (name: String) -> String in "Name is \(name)" }

var name = function("Anna")
print(name)

name = closure("Dima")
print(name)

closure = { _ in "I am Groot"}
name = closure("1")
print(name)

let square = { (number: Double) -> Double in number * number}
square(3)


//Какой тип имеют константы?
let hello = { print("Hello World")}
hello()

let echo = { (name: String) in print("Name is \(name)")}
echo("Dima")

let description = { (name: String) -> String in "Name is \(name)" }
description("Anna")



//Сокращенные записи closure

let names = ["Cris", "Barry", "Eva", "Barry", "Daniella", "Alibaba"]
func backward(s1: String, s2: String) -> Bool {
    s1 > s2
}

var reversed = names.sorted(by: backward)



reversed = names.sorted(by: {(s1: String, s2: String) -> Bool in return s1 > s2})
reversed = names.sorted(by: {s1, s2 in s1 > s2})
reversed = names.sorted(by: { $0 > $1 })
reversed = names.sorted(by: >)


print(reversed)


//Функциональное программирование
let wordLog: [String?] = ["param", "Hello", nil, nil, "hI"]
var upperWords = [String]()
for word in wordLog {
    if word != nil {
        let WORD = word!.uppercased()
        upperWords.append(WORD)
    }
}
print(upperWords)

let upperWord = wordLog.compactMap { $0?.uppercased() } //Сначала переводит в верхний регистр, затем отсортировывает nil
print(upperWord)
