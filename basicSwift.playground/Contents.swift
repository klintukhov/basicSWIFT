import UIKit

var str = "Hello, playground"

enum travelClass {
    case first, business, economy
}

let travel = travelClass.first
let travelTwo = travelClass.business

// Game

enum Medal {
    case gold
    case silver
    case bronse
}
let medal = Medal.bronse

switch medal {
case .gold:
    print("your medal is gold")
case .silver:
    print("your medal is silver")
case .bronse:
    print("your medal is bronse")
}

// Week days

enum WeekDay {
    case monday
    case tuesday
    case wednesday
    enum thursday {
        case day                // vlozennuy enum
        case night
    }
    case friday
}

var thursday = WeekDay.thursday.night


enum Operation {
    case integer(Int)           //  associativnuy tip
    case float(Float)
    case doble(Double)
    case string (String)
}

let dictionary: Dictionary <String, Operation> = [
    "Integer" : Operation.integer(3),
    "Float" : Operation.float(3.4444),
    "Double" : Operation.doble(4.5),
    "String" : Operation.string("Stroka")
]

let value = dictionary["Integer"]
print(value!)


// 1) Создайте по 1-2 enum разных типов.

enum PhoneModels {
    case iphone
    case samsung
    case nokia
}

enum Phonemodels {case iphone, samsung, nokia}

let myphone = Phonemodels.iphone


enum AutoParts {
    case door(Int)
    case wheel(Int)
    case engine(String)
}

let parametersParts: Dictionary <String, AutoParts> = [
    "Door" : AutoParts.door(4),
    "wheel": AutoParts.wheel(4),
    "engine" : AutoParts.engine("Gasoline")
]

// 2) Создайте несколько своих enum, названия какие хотите: например, анкета сотрудника - пол, возраст,ФИО, стаж. Используйте switch как в видео.
// v1

enum Anketa {
    case name
    case surname
    case profession
    case age
}

let anketa = Anketa.name

switch anketa {
case .name:
    print("Your name is Ivan")
case .surname:
    print("your surname is Ivanov")
case .profession:
    print("You are builder")
case .age:
    print("You are 40 years old")
}

// v2

enum Transport {
    case ship
    case bus
    case train
    case plane
}

let ticket = Transport.ship

switch ticket {
case .train:
    print("buy ticket to the \(Transport.train)")
case .ship:
    print("buy ticket to the \(Transport.ship)")
case .bus:
    print("buy ticket to the \(Transport.bus)")
case .plane:
    print("buy ticket to the \(Transport.plane)")
    
}

// 3) Создать enum со всеми цветами радуги. Создать функцию, которая содержит названия разных предметов или объектов.
//Пример результата в консоли "apple green", "sun red" и т.д.


enum Colors {
    case red
    case orange
    case green
    case blue
    case indigo
    case viloet
}

let nature = ["tree", "sky", "grass", "flower", "dusk", "orange" ]

func colorsOfNature (color: Colors) {
    switch color {
    case .blue:
        print("The color of \(nature[1]) is \(Colors.blue)")
    case .red:
        print("The color of \(nature[4]) is \(Colors.red)")
    case .orange:
        print("The color of \(nature[5]) is \(Colors.orange)")
    case .green:
        print("The color of \(nature[2]) is \(Colors.green)")
    case .indigo:
        print("The color of \(nature[0]) is \(Colors.indigo)")
    case .viloet:
        print("The color of \(nature[3]) is \(Colors.viloet)")
    }
    
}

colorsOfNature(color: .blue)
colorsOfNature(color: .red)
colorsOfNature(color: .indigo)


// 4) Создать функцию, которая выставляет оценки ученикам в школе.

enum Mark {
    case two
    case three
    case four
    case five
}
 
let schoolBoy = ["John", "Jack", "Nick", "Bred"]

func whatMark(Mark: Mark) {
    switch Mark {
    case .two:
        print("Hello \(schoolBoy[0]), your mark is 2")
    case .three:
        print("Hello \(schoolBoy[1]), your mark is 3")

    case .four:
        print("Hello \(schoolBoy[2]), your mark is 4")

    case .five:
        print("Hello \(schoolBoy[3]), your mark is 5")

    }
    }
    
    
whatMark(Mark: .five)
whatMark(Mark: .four)
whatMark(Mark: .three)


// 5) Создать программу, которая "рассказывает" - какие автомобили стоят в гараже.


enum Cars {
    case lada
    case moskvich
    case volga
    case zaz
}

func carsInGarage(CarInfo: Cars) {
    switch CarInfo {
    case .lada:
        print("in the garage there is \(Cars.lada)")
    case .moskvich:
        print("in the garage there is \(Cars.moskvich)")
    case .volga:
        print("in the garage there is \(Cars.volga)")
    case .zaz:
        print("in the garage there is \(Cars.volga)")
        }
    }


carsInGarage(CarInfo: .lada)
carsInGarage(CarInfo: .moskvich)
carsInGarage(CarInfo: .volga)


//8) Создайте своё резюме с использованием enum: имя, фамилия, возраст, профессия, навыки, образование, хобби и т.д. - пункты на ваше усмотрение.

enum Reusume: String {
    case name = "Ivan"
    case surname = "Kovalev"
    case age = "45"
    case profession = "Driver"
    case education = "Economost"
    case hobby = "Football"
        }

let myResume = """
hello my name is \(Reusume.name.rawValue) \(Reusume.surname.rawValue),
I'am \(Reusume.age.rawValue) and my profession is \(Reusume.profession.rawValue).
My education is \(Reusume.education.rawValue) and my hobby is \(Reusume.hobby.rawValue)
"""
print(myResume)

//9) Создайте своё резюме с использованием enum: имя, фамилия, возраст, профессия, навыки, образование, хобби и т.д. - пункты на ваше усмотрение.
//Пропустите ваше резюме сначала через if else, затем через switch — для того, чтобы было понимание читаемости и красоты кода.

enum personDates{
    case name
    case surname
    case age
    case profession
    case hobby
}

var infoPerson = personDates.name

    
switch infoPerson {
case .name:
    print("Name of person is Stepan")
case .surname:
    print("Surname of person is Ivanov")
case .age:
    print(40)
case .profession:
    print("Builder")
case .hobby:
    print("Hockey")

}

personDates.name
personDates.surname

//10) Представьте, что вы попали на завод Apple. Вам принесли MacBook, Iphone, Ipad, Apple Watch и сказали: «Раскрась их в разные цвета. Джони Айву нужно вдохновение».
//Вы подвисли и начали раскрашивать. В итоге у вас получился красный MacBook, зеленый Ipad, розовый Iphone и буро-коричневый Apple Watch.
//Инструкция: для цветов задаём через enumeration. Наши девайсы располагаем в теле функции.
//Итог программы: «Айфон — розовый».


enum DeviceColors {
    case red
    case green
    case pink
    case brown
}
let prepare = DeviceColors.red

func prepare(color: DeviceColors) {
    switch color {
    case .red :
        print("the color of your Macbook is \(DeviceColors.red)")
    case .green :
        print("the color of your IPad is \(DeviceColors.green)")
    case .pink:
        print("the color of your Iphone is \(DeviceColors.pink)")
    case .brown:
        print("the color of your Apple watch is \(DeviceColors.brown)")
    }
}

prepare(color: .pink)
prepare(color: .red)

