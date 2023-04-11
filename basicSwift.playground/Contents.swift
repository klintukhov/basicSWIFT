import UIKit

var stringArray = ["a", "b", "c"]
var intArray = [1, 2, 3, 4, 5]
var doubleArray = [1.1, 1.4, 3.4]

func printStringArray(s: [String]) {
    
    for i in s {
        print(i)
    }
}

printStringArray(s: stringArray)

func printIntArray(s: [Int]) {
    for i in s {
        print(i)
    }
}

printIntArray(s: intArray)

func printDoubleArrray(s: [Double]) {
    for i in s {
        print(i)
    }
}

printDoubleArrray(s: doubleArray)

func printArrayElements<T>(s: [T]) {  // generic, printed all types of array
    for elements in s {
        print(elements)
    }
}

printArrayElements(s: stringArray)
printArrayElements(s: intArray)
printArrayElements(s: doubleArray)


func doAnything<T>(x: T) -> T {
    return x
}

doAnything(x: "DDD")
doAnything(x: 123)
doAnything(x: 2.2)
doAnything(x: false)



// 3) Создать любой generic для перечислений.

enum Moto<T> {
    
    case engine(T)
    case wheel(T)
    case name(T)
}

let engine = Moto.engine(998)
let wheel = Moto.wheel(17)
let name = Moto.name("Honda")


// 3) Создать любой generic для структур.

struct MotoSaling<T> {
    
    var motos = [T]()
    
    mutating func sale(item: T) {
        motos.remove(at: item as! Int)
        print(motos)
    }
    
    mutating func buy(item: T) {
        motos.append(item as! T)
        print(motos)
    }
}

var motosForSale = ["Honda", "Suzuki", "Yamaha"]

var motos = MotoSaling(motos: motosForSale)

motos.buy(item: "Yamaha")


//4) Написать функцию, которая принимает Generic объект и складывает в массив/словарь(на выбор)

var myObjects = [String]()

func pushObject<T>(object: T) {
    var myObjects = [T]()
    myObjects.append(object)
    print(myObjects)
}

pushObject(object: "Hello")
pushObject(object: "Good bye")
myObjects


//6) Написать класс на свой вкус(любые методы, проперти) универсального типа. Используя extension, расширить класс, добавить сабскрипт. (потренируйтесь)

struct TennisPlayer {
    
    var surname: String
    var sex: String
    var racket: String
    var place: Int
}

class TennisTornament {
    
    var playersArray = [TennisPlayer]()
    
    func addPlayer(surname: String, sex: String, racket: String, place: Int) {
        
        playersArray.append(TennisPlayer(surname: surname, sex: sex, racket: racket, place: place))
    }
    
    func placeSorting(array: [AnyObject]) {
        
        var sortedPlayersArray = playersArray.sorted(by: {$0.surname < $01.surname})
        
        for player in sortedPlayersArray {
            
            print(player.surname)
        }
    }
}

var players = [AnyObject]()

var player = TennisTornament()

extension TennisTornament {
    
    func dataPlayer(index: [Any]) {
        print("The best player of tournament is \(playersArray.self)")
    }
}


player.addPlayer(surname: "Nadal", sex: "man", racket: "Babolat", place: 2)
player.addPlayer(surname: "Jokovic", sex: "man", racket: "Head", place: 1)
player.addPlayer(surname: "Federer", sex: "man", racket: "Wilson", place: 3)
player.addPlayer(surname: "Sharapova", sex: "woman", racket: "Wilson", place: 4)



player.placeSorting(array: players)
player.dataPlayer(index: [1])
player.dataPlayer(index: [0])
