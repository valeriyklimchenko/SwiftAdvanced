    //Для чего нужны?
    //Когда в значении переменной может не быть ничего (nil)
    //Если мы не уверенны, что значение переменной содержит корректное значение
    //не нужно проверять переменную на nil

var x = 1
//print(x)    //1
var y: Int
//print(y)    //Variable 'y' used before being initialized

var n: Int? = 1
//print(n)    //Optional(1)

var m: Int?
//print(m)    //nill

var userID: Int? = Int("kffgfkgkf")
//print(userID)   //nil

    //Примеры объя вления опционалов
    //Только опционалы могут принимать значение nil
    //Int? = Optional<Int>

var text1: String?// = "text"
var text2: Optional<String> = "text"
var text3 = Optional(false)    //Здесь мы не залавали тип переменной явно, компилятор определяет сам
var text4: String?// = Optional("text")
var text5: Optional<String> = Optional("text")

//var text6: Int? = "1"   //Cannot convert value of type 'String' to specified type 'Int?'
//var text7: String? = 1  //Cannot convert value of type 'Int' to specified type 'String?'

//print(text1, text2, text3, text4, text5)

    //Как получить значение из опционала?
    //I. ! - unwrap operator - оператор принудительного извлечения из опционала. Используется если уверены что значение не содержит null
var o: Int? = 10
var p = 5
//o += p  //force-unwrap using '!' to abort execution if the optional value contains 'nil'
if o != nil {
    o! += p
}
//print(o)    //Optional(15)

o = Int("text")
//o! += p     //Unexpectedly found nil while unwrapping an Optional value

    //Неявное извлечение из опционала
var id: Int? = Int("dfkg") //nil
if var ourID = id {
//    print("число \(ourID)")
    print(ourID)
}
else {
//    print("не число \(ourID)")
//    print("некорректное значение id")
}

var a: Int? = Int("10")
var b: Int? = Int("sdfg")
if var a = a, var b = b {
    print(a+b)
}
else{
//    print("error")
}
//или
if var a, var b {
    print(a+b)
} else {
//    print("error")
}

//Опционалы в switch
// ? используется для проверки значения, nill - для проверки его отсутствия

var sw: Int? = Int("11")
switch sw {
case var 10?:
    print(10)
//case var value?:
//    print("value \(sw)")
case sw?:
    print("value \(sw)")

case nil:
    print("error")
break
default:
    print(sw)
}
