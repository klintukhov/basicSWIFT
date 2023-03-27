import UIKit

class Adress {
    let street = "Flamingo Road"
    let number = 17
}

class Home {
    let adress = Adress()
    let rooms: Int? = 3
    var parking: Parking? = Parking()
    
    func printRooms() {
        print("The number of rooms is \(rooms)")
    }
}
struct Parking {
    var carPlace = 5
}

class Parents {
    
    var cars: [String]? = ["Mercedes"]
    var home: Home?  = Home()
}

var parents = Parents()

parents.cars?[0]
print(parents.home!)

parents.home?.parking?.carPlace

if (parents.home?.parking?.carPlace = 7) != nil {
    print("property installed")
} else {
    print("property not installed")
}

parents.cars?[0]

parents.home?.printRooms()

if (parents.home?.printRooms()) != nil {
    print("You can print the room")
} else {
    print("You can not print the room")
}


//3) Сделать класс Люди, класса будут проперти родственники, соседи и тд (всё опционально).
//4)Создать нужно более 25 человек.
class People {
    
    let parentss: Relatives? = Relatives()
    let brothers: Brothers? = Brothers()
    let sisters: Sisters? = Sisters()
    let friends: Friends? = Friends()
    let collegue: Collegue = Collegue()
}

class Relatives {
    let myRelatives: [String]? = ["Iryna", "Pavel"]
}

class Grandparants {
    let myGranparants: [String]? = ["Dmitrii", "Nikolay", "Raisa", "Anna"]
}

class Brothers {
    let myBrothers: [String]? = ["Denys", "Zhenia", "Anton"]
}

class Sisters {
    let mySister: [String]? = ["Galina", "Oksana"]
    
    
}
class Friends {
    let myFriends: [String] = ["Alex", "Artem", "Bogdan", "Alexandr", "Viktor", "Andrey", "Stepan", "Stas", "Maxim",
                               "Yurii", "Nikita", "Milan", "Jirka", "Roman", "Vaclav"]
}

class Collegue {
    let myColegues: [String]? = ["Misha", "Sasha", "Oleg"]
}

//5)Посчитать, сколько у этого человека двоюродных Братьев, троюродных Сестёр, Теть, Дядь, И так далее

let grandparents = Grandparants()
let countGrandparents = grandparents.myGranparants?.count


let relatives = Relatives()
let countRelaives = relatives.myRelatives?.count

let sisters = Sisters()
let countSisters = sisters.mySister
let sistersArray = sisters.mySister
sistersArray

let brothers = Brothers()
let countBrothers = brothers.myBrothers?.count

let friends = Friends()
let countFriends = friends.myFriends.count
let friendsArray = friends.myFriends

friendsArray

let collegues = Collegue()
let countCollegues = collegues.myColegues?.count

//6)Создать кlасс животных и проперти - корова, коза, собака и тд

class Animals {
    
    var name: String
    
    init(name: String) {
        self.name = name
        }
    
    func appAnimal(name: String) {
        var array = [String]()
        array.append(name)
    }
}


//7)Создать класс растения и проперти - трава, цветы и тд

let animalOne = Animals(name: "cat")
let animalTwo = Animals(name: "dog")
let animalThree = Animals(name: "cow")

let animalsArray = [animalOne, animalTwo, animalThree]


class Plants {
    
    var type: String
    
    init(type: String) {
        self.type = type
        }
}

let tree = Plants(type: "oak")
tree.type

let flower = Plants(type: "rose")
flower.type

let bush = Plants(type: "boxwood")
bush.type
let plantsAraay = [tree, flower, bush]
plantsAraay

//8)Положить их всех в массив и отсортировать по алфовиту и по классу - Люди - животные - растения


var allClassesArray: [Any] = [bush, flower, tree, animalOne,
                              animalThree, animalTwo, collegues, brothers,
                              parents, friends, grandparents, sisters]


var sortedArraybyName = plantsAraay.sorted(by: {$0.type < $1.type})
sortedArraybyName

//var ss = allClassesArray.sorted(by: {$0 < $1})
