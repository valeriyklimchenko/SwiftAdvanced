import UIKit
import Foundation

class BoardPlayer {
    
    var name: String
    var alias: String { return name}
    init(name: String) {
        self.name = name
    }
    
}

class NimPlayer: BoardPlayer {
    
    override var name: String {
        get { "hello" }
        set { "hello" }
    }
    
    override var alias: String {
        String(name.first!)
    }
    
}

var player = NimPlayer(name: "Mike")
print(player.name)
print(player.alias)



class Point {
    
    var x, y: Float
    
    init(x: Float, y: Float) {
        self.x = x
        self.y = y
    }
    
    convenience init() {        //"удобный"
        self.init(x: 0, y: 0)
    }
    
}

var onePoint = Point(x: 1, y: 1)
var zeroPoint = Point()



class ColorPoint: Point {
    
    var color: CGColor          //CGColor?   CGColor!
    
    init(x: Float, y: Float, color: CGColor) {
        self.color = color
        super.init(x: x, y: y)
    }
    
}

//    var colorPoint = ColorPoint(x: 1, y: 1, color: .white)



enum Country {
    case argentina, china, france, usa
}

enum Genre {
    case thriller, horror, historical, romance, fiction
}

struct Book {
    let author: Author
    let title: String
    let year: Int
    var genre: Genre
}

class Author {
    let name: String
    let country: Country
    let genre: Genre
    
    private var bookCounter = 0
    private(set) var books = [Int: Book]()
    
    init(name: String, country: Country, genre: Genre) {
        self.name = name
        self.country = country
        self.genre = genre
    }
    
    func whriteNewBook(title: String) {
        let year = Calendar(identifier: .gregorian).component(.year, from: Date())
        let newBook = Book(author: self, title: title, year: year, genre: genre)
        
        bookCounter += 1
        books[bookCounter] = newBook
        
        print("\(self.name) just wrote a book \(title)")
    }
    
    func publishBook(title: String) {
        if let number = books.first(where: { $1.title == title })?.key {
            print("\(self.name) just published the \(number)th book \(title)")
        } else {
            print("no such book with title \(title)")
        }
    }
    
}

class HororAuthor: Author {
    
    let ageRating: Int
    
    init(name: String, country: Country) {
        self.ageRating = 16
        super.init(name: name, country: country, genre: .horror)
    }
    
    override func publishBook(title: String) {
        super.publishBook(title: title)
        print("\(ageRating) is \(ageRating) +")
    }
    
}

public class Library {
    private var bookCounter = 0
    private(set) var books: [Int: Book] = [:]
    
    func getBooksByGennre(_ genre: Genre) -> [Book] {
        let filtered = books.filter { $1.genre == genre }
        return Array(filtered.values)
    }
    
//    func getBooksByAuthor(_ author: String) -> [Book] {
//        let filtered = books.filter { $1.author = autor }
//        return Array(filtered.values)
//    }
    
}

let jonRead = Author(name: "Jon Read", country: .usa, genre: .fiction)
jonRead.whriteNewBook(title: "Hello my funny world")
print(jonRead.books[1] ?? "nothing")
jonRead.publishBook(title: "Hello my funny world")
