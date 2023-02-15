import UIKit

class People {
    var name = "John"
    var surname = "Smith"
    var fullNmae: String {
        return name + "" + surname
        
    }
    
    func printMethod() -> String {
        return ("Your name is - ")
    }
}

class Man: People {
    
    override func printMethod() -> String {
        return super.printMethod() + "Patrick"
    }
    
    
}

let people = People()
people.name
let man = Man()
man.name
man.printMethod() // returned with override

// INCAPSULATION  ===================================================

class Boys  {
    
    private var firstname = "Bob" // private property
    public var surname = "Johnson" // public property
    
    final func printHi() {
        print("Hello" )
        
    }
}

class Girls: Boys{
}

let girls = Girls()

// Polymorphysm ==================================

class General {
    var name = "AAA"
    func methodHi() {
        print("Hello General")
    }
}

class People1: General {
    
    override func methodHi () {
        print("Hi people1")
    }
}


class People2: General {
    
    override func methodHi () {
        print("Hi people2")
    }
}


let general = General()
let people1 =  People1()
let people2 = People2()

people2.name = "XXX"
var array = [general, people1, people2]

for obj in array {
    print(obj.name)
    obj.methodHi()
}


//1. Создать класс "люди", в этом классе 4 property - "имя", "рост", "вес", "пол", а также будет иметь метод "say(говорит)".

class Human {
    var name = "Semen"
    var height = 180
    var veight = 77
    var sex = "M"
    
    func say() -> String{
        return ("Hello to all!")
    }
    
}

//2. Создать sub class (наследники) "повар", "менеджер", "борец" и переопределить метод "say(говорит)" в каждом из этих классов.

class Cock: Human  {
    override func say() -> String {
        return ("Hello i'am a cock!")
        
    }
}



class Manager: Human {
    
    override func say() -> String {
        return ("Hello i'am a manager!")
    }
}


class Fighter: Human {
    override func say() -> String {
        return ("Hello i'am a fighter!")
        
    }
}


//3. Создать по одному объекту(экземпляру) каждого класса и объединить их в массив.

var human = Human()
var cock = Cock()
cock.name = "Andrey"
var manager = Manager()
manager.name = "Oleg"

var fighter = Fighter()
fighter.name = "Yaroslav"

var humans = [human, cock, manager, fighter]

//4. В цикле “for in” пройти по всем элементам массива и вывести в консоль все характеристики каждого объекта (имя, рост и тд) и у каждого вызвать метод "say(говорит)".

for human in humans {
    
    print(human.name, human.height, human.veight, human.sex, human.say())
    human.say()
    
}

//5. Создать еще одного наследника от super Class, добавить в него пару новых свойств, добавить в массив и в цикле вывода вывести его свойства как дополнение к свойствам People.
//6. Метод "say(говорит)" реализовать таким образом, чтобы перед тем как выполнить собственный method say, выполнялся сначала метод say класса People.


class NewHuman: Human {
    
    var tatoo = true
    var skill = "hand walking"
    
    override func say() -> String {
        return (super.say() + " " + "I have a new tatoo!")
        
    }
}


var newHuman = NewHuman()


humans.append(newHuman)
humans

for human in humans {
    newHuman.skill
}
newHuman.say()

//7. Вывести все это в обратном порядке(Google в помощь).


// Pereproverit'
var reversedArraay = humans.enumerated().reversed()

for (_, value) in reversedArraay {
    
    print(value.name)
}


//8. Создать класс "Марсианин" (не наследник класса people!) со своими собственными property (отличными от people) и методом "say" (отличным от people).

class Marsian {
    
    var name: String
    var colour: String
    var countHands: Int
    
    func alienSay() -> String {
        return ("Hello, my name is: ")
    }
    
    init(name: String, colour: String, countHands: Int) {
        self.name = name
        self.colour = colour
        self.countHands = countHands
    }
}


//9. Унаследоваться от него и создать пару других классов (Инопланетян) с переопределенным методом "say".

class AlienOne: Marsian {
    
    override func alienSay() -> String {
        return(super.alienSay() + "Alf-001")
        
    }
}


class AlienTwo: Marsian {
    
    override func alienSay() -> String {
        return(super.alienSay() + "Alf-002")
    }
    
}

var marsian = Marsian(name: "AA", colour: "", countHands: 0)

var alienOne = AlienOne(name: "Alf-031", colour: "Brown", countHands: 4)
var alienTwo = AlienTwo(name: "Alf-052", colour: "Violet", countHands: 6)


//10. Объединить всех people и Марсианинов) в один массив.

var humansAndMarsians: [Any] = [ human, cock, manager, fighter, alienOne, alienTwo ]

//11. В цикле выводить тип объекта (People или Марсианин) перед тем как выводить его свойства и вызывать метод

for object in humansAndMarsians {
    if object is Human {
        let object = object as! Human
        print("There are  \(human) and there names are \(human.name), the human height is \(human.height)")
    } else if object is Marsian {
        let object = object as! Marsian
        print("There are \(marsian) and his name is\(marsian.name), and their color is \(marsian.colour)")
    }
}
