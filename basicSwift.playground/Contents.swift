import UIKit

var dict = ["key":"value"]

dict["key"]

var array = ["mama", "papa"]

array[0]


struct Table {
    
    var multi: Int
    subscript(index: Int) -> Int {
        get {
            return multi * index
        }
    }
}

var tableResult = Table(multi: 2)

tableResult[5]


// v2

struct Man {
    
    var man1 = "man1: hello"
    var man2 = "man2: iam goog"
    var man3 = "man3: hi"
    
    subscript(index: Int) -> String? {
        get {
            switch index {
            case 0: return man1
            case 1: return man2
            case 3: return man3
                
            default: return ""
            }
        }
        
        set {
            let value = newValue ?? ""
            
            switch index {
            
            case 0: return man1 = value
            case 1: return man2 = value
            case 3: return man3 = value
                
            default: break
                
            }
            
            
        }
    }
}
var say = Man()
say[1]
say[0]


// 3.Создать клас в котором будет 3 проперти мама Папа и дети . Создать sabscript и упорядочить их по индексу.

class myFamily {
    
    var mother = "Iryna"
    var father = "Pavel"
    var brother = "Denis"
    
    
    subscript(index: Int) -> String {
        
        get {
            switch index {
            case 0: return ("My mothers name is \(mother)")
            case 1: return ("My fathers name is \(father)")
            case 2: return ("My brothers name is \(brother)")
                
            default:
                return ("Enter correct index number")
            }
        }
    }
}

var relative = myFamily()

relative[2]
relative[0]
relative[7]

//4. Создать Индекс который будет принимать число умножать его на 100 и делить на 2.

class Counting {
    
    subscript(number: Int) -> Int {
        
        return (number * 100) / 2
    }
}

var myNumber = Counting()
myNumber[20]
print("The result of counting by index is \(myNumber[10])")
// v2
var bb = myNumber[20]
print("The result of counting by index is \(bb)")


//5.Создать свой subscript у которого внутри есть оператор if else.

class Transport {
    
    let auto = "road"
    let plane = "flight"
    let ship = "sea"
    
    subscript(index: String) -> String {
        
        if index == auto {
            print("the best type for trvelling by auto is \(auto)")
        } else if index == plane {
            print("if you dont scare planes, your type will be is \(plane)")
        } else if index == ship {
            print("if you like vawes and ocean wind, the best choise for you is the \(ship)")
        }
        return "x"
    }
}
var yourType = Transport()
yourType["road"]
yourType["sea"]

var adventure = """
Hello dear travellers, we have a good proposition for you. We have lowcoast tickets and a rent of car for this celebrates. \nSo...
the best type for trvelling by auto is \(yourType.auto), if you dont scare planes, your type will be is \(yourType.plane) \nand if you like vawes and ocean wind, the best choise for you is the \(yourType.ship)
"""

print(adventure)


//6. Создать класс человек и в нем 3 проперти имя , возраст пол .

class Human {
    
    var name: String
    var age: Int
    var sex: String
    
    init(name: String, age: Int, sex: String) {
        self.name = name
        self.age = age
        self.sex = sex
    }
    
}

var humanDates = Human(name: "Ivan", age: 45, sex: "M")

//7. Создать ещё 2 класса которые наследуються от класса человек и переопределить методы и свойства .

class Girl: Human {
    
}

class Boy: Human {
    
}

var boyDatas = Boy(name: "Sergey", age: 16, sex: "M")
var girlDatas = Girl(name: "Ira", age: 19, sex: "W")


//8. Создать дикшинари который хранит все типы данных которые есть а ключ должен быть только строка
// воспользоваться enum для типов данных)

enum DataType {
    case int(Int)
    case double(Double)
    case string(String)
    case bool(Bool)
    case float(Float)
    
}

let dictionary = ["int": DataType.int(12), "double": DataType.double(2.23), "float": DataType.float(2.333), "String": DataType.string("Value"), "bool": DataType.bool(true)]
dictionary["int"]
dictionary["double"]
dictionary["bool"]
dictionary["float"]
