import UIKit

protocol Pet {
    var name: String { get }
    var spicies: String { get }
    var sex: String { get }
    
    func eat()
    func sleep()
    func spendTimeWithOwner()
}

class Dog: Pet {
    
    var name: String
    var spicies: String = "Dog"
    var sex: String
    
    var breed: String
    
    init(name: String, sex: String, breed: String) {
        self.name = name
        self.sex = sex
        self.breed = breed
    }

    func eat() {}
    func sleep() {}
    func spendTimeWithOwner() {}
    
    func play() {}
    func waveTail() {}
    func bark() { print("Bark by bass") }
    func bite() {}
}

class Corgi: Dog {

    init(name: String, sex: String) {
        super.init(name: name, sex: sex, breed: "Corgi")
    }
    
    override func bark() {
        super.bark()
        
        print("Bark loudly")
    }
    
    func beNice() {}
}

func callAllElements(in sequence: any Sequence) -> Int {
    var i = 0
    sequence.forEach { _ in i += 1 }
    return i
}

callAllElements(in: [1, 2, 3, 4, 5, 6])
callAllElements(in: "Hello world")
