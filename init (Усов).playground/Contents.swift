// суперкласс
class Quadruped {
    var type = ""
    var name = ""
    func walk(){
        print("walk")
    }
}
// подкласс
class Dog: Quadruped {
func bark(){
        print("woof")
    }
}
//var dog = Dog()
//dog.type = "dog"
//dog.walk() // выводит walk
//dog.bark() // выводит woof

//class NoisyDog: Dog{
//    override func bark(){
//        print ("woof")
//        print ("woof")
//        print ("woof")
//    }
//}
//var badDog = NoisyDog()
//badDog.bark()
//badDog.name

class NoisyDog: Dog {
    override func bark(){
        for _ in 1...3 {
            super.bark()
        }
    }
}

class DogWithName: Quadruped {
    override init() {
        super.init()
        self.name = "Spyke"
    }
}

var Spyke = DogWithName()
Spyke.name
Spyke.type
Spyke.walk()

//var badDog = NoisyDog()
//badDog.bark()
//badDog.walk()



//class Quadruped {
//    var type = "dog"
//    var name = ""
//}
//
//
//class Dog: Quadruped {
//    //метод из листинга 5
//    override init(){
//        super.init()
//        self.type = "dog"
//    }
//    //инициализатор листинга 1 со страницы Init
//    convenience init(text: String){
//self.init()
//         print(text)
//    }
//func bark(){
//        print("woof")
//    }
//    // метод из листинга 2
//    func printName(){
//        print(self.name)
//    }
//}
//var someDog = Dog(text: "")
//print(someDog)
