import UIKit


import UIKit

struct Observer {
    
    var name: String {
        
        willSet {
            print("new value wants to be" + " = " + newValue)
        }
        didSet {
            print("didset" + " = " + oldValue )
            if name != "" {
                name = name.capitalized
            }
            
        }
    }
    
}

var obserb = Observer(name: "John")
obserb.name // getter - vuzov svoystva

obserb.name = "iVan" // setter - izmenenije svoystva

print(obserb.name )


// practice from Swift book

struct Resolution {
    
    var width = 0
    var high = 0
    
}

class VideoMode {
    var resolution = Resolution()
    var interlased = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

print("The some resolution of videomode \(someResolution.width)")

print("The width of some video mode is \(someVideoMode.resolution.width)")
someVideoMode.resolution.width = 125
print(someVideoMode.resolution.width)

var vga = Resolution(width: 640, high: 480)
print(vga)

let hd = Resolution(width: 1920, high: 1000)

var cinema = hd
cinema.width = 2048

print("The hd width now is \(hd.width), and the cinema width is \(cinema.width)")

// v4

var str = "Type Properties"

let MaxLenghth = 15

struct MyStruct {
    
    static var count = 0
    var name: String {
        didSet {
            if name.count > MaxLenghth {
                name = oldValue
            }
        }
    }
    init(name: String) {
        self.name = name
        MyStruct.count += 1
    }
}

var struct1 = MyStruct(name: "Ivan")
struct1.name = "cccscscscscasxasxasxsc"
print(struct1.name)
var struct2 = MyStruct(name: "Seman")

print(MyStruct.count)

struct1



class AgeBoy {
    static var maxAge = 8
    
    lazy var say = "Hello Iam OK)" // lenivaya peremennaya
    
    var name = String(){
        didSet {
            if name.count > MaxLenghth {
                name = oldValue
            }
        }
    }
    
    
    
    var age = 8 {
        didSet {
            if age > AgeBoy.maxAge {
                age = oldValue
                print("Enter please from 6 to 8 years")
            }
        }
    }
}


var ageClass = AgeBoy()
ageClass.name = "Ivan"
ageClass.age = 20
ageClass.say



struct ComputerProperty {
    
    var firstName: String {
        didSet {
            if firstName != "" {
                firstName = firstName.capitalized
            }
        }
    }
    var lastName: String {
        didSet  {
            if lastName != "" {
                lastName = lastName.capitalized
            }
        }
    }
    
    var fullName: String {
        get {
            return firstName + " " + lastName
        }
        set {
            print("setter value is" + " " + newValue )
        }
    }
}

var compProp = ComputerProperty(firstName: "joHN", lastName: "weEK")
compProp.fullName


compProp.firstName = "jiM"
compProp.lastName = "weeeK"
print(compProp.fullName)
compProp.fullName


//3. Написать структуру "CreateTriangle",с двумя свойствами - угол A,угол C.
//И создать 2 вычисляемых свойства - те же угол А,угол С.
//И если мы записываем значения в эти углы - результатом должно быть значение третьего угла.
//Для простоты можно взять прямоугольный треугольник, сумма углов которого равна 180 градусов.

let minValue = 0

struct CreateTriangle {
    
    let allAngels = 180
    
    var angelA: Int {
        didSet {
            if angelA <= minValue {
                angelA = 1
            }
        }
    }
    var angelB: Int {
        didSet {
            if angelB <= 0 {
                print("enter correct data")
            }
            
        }
    }
    var angleC: Int {
        get {
            return allAngels - angelA - angelB
        }
    }
    
}

var valueC = CreateTriangle(angelA: 35, angelB: 45)
valueC.angleC
print(valueC.angleC)

//4. Создать структуру "Резюме", у которой есть такие свойства:
//- Фамилия,
//- Имя.
//- Должность,
//- Опыт,
//- Контактные данные(телефон, емейл),
//- О себе(можно записать какие-то пару предложений на выбор).

struct Resume {
    
    var surname: String {
        didSet {
            if name != "" {
                name = name.capitalized
            }
        }
    }
    var name: String {
        didSet {
            if name != "" {
                name = name.capitalized
            }
        }
    }
    var position: String {
        didSet {
            if position != "" {
                position = position.capitalized
            }
        }
    }
    var experience: String {
        didSet {
            if position != "" {
                position = position.capitalized
            }
        }
    }
    var contacts: String  {
        didSet {
            if contacts != "" {
                contacts = contacts.capitalized
            }
        }
    }
    var aboutYou: String {
        didSet {
            if aboutYou != "" {
                aboutYou = aboutYou.capitalized
            }
        }
    }
}

var myResume = Resume(surname: "Ivanov", name: "Semen", position: "Kotlin dev", experience: "one year", contacts: "Semen123@gmail.com", aboutYou: "I like this game")
myResume.name = "nikita"
myResume.position = "iOS dev"
print(myResume)



//5. Задание на закрепление предыдущих тем:
//Создать журнал, что б можно было писать имя, фамилию и оценку
//Поставить ограничения: имя и фамилия не выше 15 символов каждое.
//И оценка не выше 5.
//Если везде значения превышаться выдавать об этом Сообщения в консоль.

struct JournalStudents {
    
    static var maxNameSurname = 15
    
    static var maxMark = 5
    
    var surnameStudent: String {
        didSet {
            if surnameStudent.count > JournalStudents.maxNameSurname {
                surnameStudent = ("Enter corrected data")
                
            }
        }
    }
    
    var nameStudent: String {
        didSet {
            if nameStudent.count > JournalStudents.maxNameSurname {
                nameStudent = ("Enter corrected data")
                
            }
        }
    }
    
    var markStudent: Int {
        didSet {
            if markStudent > JournalStudents.maxMark {
                markStudent = oldValue
                print("sdcscd")
            }
        }
    }
    
}

var resultJournal = JournalStudents(surnameStudent: "Week", nameStudent: "Johnnnnnnnnnnnnnnnnnnnnn", markStudent: 4)
resultJournal.surnameStudent = "Week"
resultJournal.nameStudent = "Johnnnnnnnnnnnnnnnnnnnnn"
resultJournal.markStudent = 333

print(resultJournal)



//6. Написать класс,в котором есть 4 функции:
//-пустая, которая просто выводит сообщение через print,
//- которая принимаете параметры и выводит их в консоль,
//- которая принимает и возвращает параметры.
//- которая принимает замыкание и распечатывает результаты в консоль


class Functions {
    
    func funcOne() {
        print("Just empty message")
    }
    
    func funcTwo(paramOne: String, paramTwo: Int) {
        print(paramOne, paramTwo)
    }
    
    func funcThree(paramOne: String, paramTwo: String, paramThree: Int) -> (String) {
        
        return String(paramOne) + String(paramTwo) + String(paramThree)
    }
    func funcFour(for sort: [Int]) -> [Int] {       //////////// ne rabotaet!!!!!!!!
        
        var myArray = [Int]()
        
        return myArray.sorted(by: {$0 < $1})
        
    }
}


var resultFunc = Functions()

resultFunc.funcOne()

resultFunc.funcTwo(paramOne: "Your number", paramTwo: 15)

var myResult = resultFunc.funcThree(paramOne: "BMW ", paramTwo: "525 ", paramThree: 2017)
print(myResult)


var arrayForSort = [9, 4, 1, 5, 7]

var sorting = Functions()
sorting.funcFour(for: arrayForSort)
print(arrayForSort)
var c = sorting.funcFour(for: arrayForSort)
print(c)
