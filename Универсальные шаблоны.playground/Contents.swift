
//Универсальные шаблоны
func swapTwoInts(_ a: inout Int, _ b: inout Int) -> (Int, Int) {
    let c = a
    a = b
    b = c
    return (a, b)
}

var a = 7
var b = 6
swapTwoInts(&a, &b)
print("a = \(a)")
print("b = \(b)")

//Универсальные функции
func swapTwoValues<T>(_ x: inout T, _ y: inout T) -> (T, T) {
    let z = x
    x = y
    y = z
    return(x, y)
}

var x = true
var y = false
swapTwoValues(&x, &y)
print("x = \(x)")
print("y = \(y)")
