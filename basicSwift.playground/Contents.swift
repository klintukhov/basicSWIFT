import UIKit

class ParentsClass  {
    var array = [String] ()
    var name = ""
    var age = 20
    
    init (name: String, age: Int) {
        self.name = name
        self.age = age
        
    }
}

class Son: ParentsClass {
    func method(name: String) {
        print("Hello \(name)")
    }
}

let sonclass = Son(name: "Bob", age: 22) // ekzemplar classa
sonclass.age         // svoystva classa
sonclass.method(name: "Nick")  // metod ekzemplara classa

// Struct

struct NameStruct {
    var name: String
    var age: Int
}

var str = NameStruct.init(name: "Max", age: 33)

str.name = "John"

// practice

class Player {
    let name: String    // svoystva classa
    var level: Int = 0
    
    init(name: String) { // inicializatoru
        self.name = name
    }
    init(name: String = "Gost", level: Int) {
        self.name = name
        self.level = level
    }
    
    func printInfo() {              // metod klassa
        print("Name of player \(self.name), level: \(self.level)")
    }
    
    func levelUp(count: Int) {
        self.level += count
    }
    
    func levelDown(count: Int) {
        guard count < self.level else {  // uslovie esli ravno menshe 0
            self.level = 0
            return
        }
        self.level -= count
    }
}

var player1 = Player(name: "Egor") // ekzempliar classa
player1.level = 4
player1.printInfo()

var player2 = Player(name: "Slava")
player2.name
player2.level = 8
player2.printInfo()

var player3 = Player(name: "Vasia", level: 8)
player3.printInfo()

player3.printInfo()
player3.levelDown(count: 4)
player3.printInfo()


var players: [Player] = [player1, player2, player3]

for player in players {
    print("Name of player is \(player.name) own score: \(player.level)")
}

// 3) Написать программу, в которой создать класс *House* в нем несколько свойств - *width*, *height* и несколько методов - *create*(выводит произведение свойств),*destroy*(отображает что дом уничтожен)и т.п.

class House {
    var length : Int
    var width : Int
    var hummer : Int
    
    init (length: Int, width: Int, hummer: Int) {
        self.length = length
        self.width = width
        self.hummer = hummer
    }
    
    func build(building: House) {
        let squareBuild = length * width
        print("Square of your house is \(squareBuild) meters")
    }
    
    func destroyBuild(destroying: House) {
        let destBuild = length * width * hummer
        if destBuild == 0 {
            print("House is destroyed")
        } else {
            print("Please enter corrected data")
        }
    }
}
var newHouse = House(length: 12, width: 13, hummer: 1)
print(newHouse)


newHouse.build(building: newHouse)
newHouse.destroyBuild(destroying: newHouse)


//4) Создайте класс с методами, которые сортируют массив учеников.

class Sorting {
    
    var arrayToSort = [String]()
    
    init (arrayToSort: [String]) {
        self.arrayToSort = arrayToSort
    }
    func sortingStudentsUp(array: [String]) -> [String] {
        array.sorted {$0 < $1}
        return array.sorted {$0 < $1}
        
    }
    func sortingStudentsDown(array: [String]) -> [String] {
        array.sorted {$0 > $1}
        return array.sorted {$0 > $1}
    }
}

var students = ["Alex", "Semen", "Zhanna", "Illia", "Sergey"]
var sortArr = Sorting(arrayToSort: students)

sortArr.sortingStudentsUp(array: students)
sortArr.sortingStudentsDown(array: students)


//5) Написать свою структуру и пояснить в комментариях - чем отличаются структуры от классов.

// Classes gives just a link on some class, & needed initialization.
// Structs giving not just a link on parent class, and it giving value of structure object, don't need initialization.

struct Kodeks {
    var razdel: String
    var statia: Int
    
    func prinStatia()  {
        print(razdel, statia)
        
    }
    
    init (razdel: String, statia: Int){
        self.razdel = razdel
        self.statia = statia
    }
}

var number = Kodeks(razdel: "Admin", statia: 23)
number.prinStatia()
var numberTwo = Kodeks(razdel: "Kriminal", statia: 244)
numberTwo.prinStatia()

print(number)
print(numberTwo)

//Дополнительно(на закрепление всех пройденных тем):
//Напишите простую программу, которая называет комбинации в покере.
//1) Записываем комбинации в массив.
//2) Если определённая комбинация - выводим соответствующую запись в print.

//Результат в консоли примерно такой:
//"У вас бубновый стрит флеш ".
//Подсказки:
//- для мастей можно использовать перечисления(enum),
//- В зависимости от комбинации - в консоли печатаем тот или иной ответ.
//- Комбинации можно взять отсюда:
//http://www.russiapokernews.com/poker-hand-ranking
// Royal flush. A, K, Q, J, 10, all the same suit. ...
//Four of a kind. All four cards of the same rank.
//Full house. Three of a kind with a pair.
//Flush. Any five cards of the same suit, but not in a sequence.
//Straight. ...
//Three of a kind. ...
//Two pair. ...
//Pair.


struct PokerGame {
    
    
    
    let comboSuit = ["Royal flush", "Four of a kind", "Full house", "Flush","Straight","Three of a kind", "Two pair", "Pair"]
    
    
    enum Suits: String {
        case chirva = "A, K, Q, J, 10, all the same suit"
        case kresta = "All four cards of the same rank"
        case bubna = "Three of a kind with a pair"
        case Pika = "Any five cards of the same suit, but not in a sequence"
    }
    
}

//3) Написать класс , а в нем метод который будет принимать букву (одну, может быть и типа string, просто будете передавать ему одну букву) и возвращать все имена которые начинаются на эту букву.
//К примеру, А - Алексей, Александр, Артем, Антон и т. д. Внутри метода или полем класса (тут как удобно, не сильно критично) будет задаваться массив строк (string) в котором будут прописаны имена. Имена откуда-то подгружать не надо, их надо просто захардкодить. Метод должен возвращать отфильтрованный массив с именами.

class FilterNames {
    
    var nameArray = [String]()
    var letter: String = String()
    
    init(nameArray: [String]) {
        self.nameArray = nameArray
    }
    init(letter: String) {
        self.letter = letter
    }
    
    func filtrtion(nameArray: [String]) -> [String] {
        var names = nameArray.filter{nameArray in nameArray.first == "A"}
        return nameArray.filter{nameArray in nameArray.first == "A"}
    }
}

var filteredArray = FilterNames(letter: "A")
var testArray = ["Andrey", "Boris", "Anton"]
filteredArray.filtrtion(nameArray: testArray)

//Так же написать метод, который будет принимать массив строк как аргумент и выводить их всех на консоль с новой строки каждое имя. Им распечатаете на консоль то что у вас получилось отфильтровать.


class PrintName {
    
    init (namesList: [String]) {
        self.namesList = namesList
    }
    let namesList: [String]
    
    func forNames(namesList: [String]) {
        
        
        for name in namesList {
            print(name)
        }
    }
}
var myArray = ["e", "t", "f", "d"]

var testingArray = PrintName(namesList: myArray)
testingArray.forNames(namesList: myArray)
