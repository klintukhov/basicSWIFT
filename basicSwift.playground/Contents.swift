import UIKit

protocol OneProtocol {
    
    var name: String { get set }
    var age: String { get set }
    
    //    mutating  func hello(text: String)
    
}

protocol TwoProtocol: OneProtocol {
    
}

struct Parents: OneProtocol {
    
    var name: String
    
    var age: String
    
}

struct Kids: OneProtocol {
    var name: String
    
    var age: String
}

struct Cat: OneProtocol {
    
    var name: String
    
    var age: String
}

var parentOne = Parents(name: "John", age: "59")
var parentTwo = Parents(name: "Jina", age: "53")
var kid = Kids(name: "Ed", age: "7")
var cat = Cat(name: "Murka", age: "1")


// example without Protocol

var arrayAll: [Any] = [parentOne, parentTwo, kid, cat]

for value in arrayAll {
    if let parent = value as? Parents {
        print(parent.name)
    } else if let kid = value as? Kids {
        print(kid.name)
    } else if let cat = value as? Cat {
        print(cat.name)
        
    }
}

var arrayTwo: [OneProtocol] = [parentOne, parentTwo, kid, cat]

func sortFamilt(array: [OneProtocol]) {
    
    for value in array {
        
        print("The name is \(value.name), age - \(value.age)")
    }
    
}

sortFamilt(array: arrayTwo)

//3) Почитать про copy on write и понять что это такое - https://www.youtube.com/watch?v=66g_pD3s7TY
//4) Реализовать структуру IOSCollection и создать в ней copy on write по типу - https://www.youtube.com/watch?v=QsoqHGgX2rE&t=594s


struct IosCollection<T>{
    
    var array = [T]()
    
}

var letterArray = ["a", "b", "c"]

var collectionOne = IosCollection(array: letterArray)

collectionOne.array.append("d")

var collectionThree = collectionOne

print(collectionThree)

collectionThree.array.append("e")

print(collectionOne)


//5) Создать протокол Hotel с инициализатором который принимает roomCount, после создать class HotelAlfa добавить свойство roomCount и подписаться на этот протокол


protocol Hotel {
    
    var roomCount: Int { get set}
    
    
}


class HotelAlfa: Hotel {
    
    var roomCount: Int
    
    init(roomCount: Int) {
        self.roomCount = roomCount
    }
}

let room = HotelAlfa(roomCount: 5)


//6) Создать protocol GameDice у него {get} свойство numberDice далее нужно расширить Int так что б когда мы напишем такую конструкцию "let diceCoub = 4 \n diceCoub.numberDice" в консоле мы увидели такую строку - "Выпало 4 на кубике"


protocol GameDice {
    
    var numberDice: String { get }
    
}

extension Int: GameDice {
    
    var numberDice: String {
        
        return "You have number \(self) on your cube."
    }
}

let diceCube = 4

diceCube.numberDice


//7) Создать протокол с одним методом и 2 мя свойствами одно из них сделать явно optional, создать класс, подписать на протокол и реализовать только 1 обязательное свойство

@objc protocol Animal {
    
    var name: String { get set }
    
    @objc optional var weight: Int { get set}  // dont set to class init
    
    var says: String { get set }
    
    func saying()
    
}

class Bull: Animal {
    
    var name: String
    
    var says: String
    
    init(name: String, says: String) {
        
        self.name = name
        self.says = says
    }
    
    func saying() {
        print("\(name) says - \(says)")
    }
}

class Dog: Animal {
    
    var name: String
    
    var says: String
    
    init(name: String, says: String) {
        
        self.name = name
        self.says = says
        
    }
    
    func saying() {
        print("\(name) says - \(says)")
        
    }
}

let bull = Bull(name: "Bichok", says: "Muuu")
bull.saying()

let dog = Dog(name: "Rey", says: "Gav-gav")
dog.saying()

