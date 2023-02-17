import UIKit

// ARC Automatic Reference counting

class Person {
    var name = String()
    
    init(name: String) {
        self.name = name
        print("\(name) initializated and created in memory ")
    }
    deinit {
        print("\(name) deleted from memory ")
    }
}

var ref1: Person?
var ref2: Person?
var ref3: Person?

ref1 = Person(name: "Andrey")   // --->  Andrey initializated and created in memory
ref2 = ref1
ref3 = ref1

ref1 = nil // dont delete
ref2 = nil // dont delete
ref3 = nil                      // ---> Andrey deleted from memory  !!!!

// CUKL STRONG REFERENCES

class Hotel {
    
    let name: String
    
    init(name: String) {
        self.name = name
    }
    var apartament: Apartments?
    
    deinit {
        print("\(name) go out")
    }
    
}

class Apartments {
    
    let room: String
    
    init(room: String) {
        self.room = room
    }
    weak var hotel: Hotel?  // weak
    
    deinit {
        print("apartments \(room) is free for rent")
    }
}

var objHotel: Hotel?
var objApartaments:  Apartments?

objHotel = Hotel(name: "Jack Smith")
objApartaments = Apartments(room: "33")

objHotel!.apartament = objApartaments
objApartaments!.hotel = objHotel

objApartaments = nil  // completed with ---> weak
objHotel = nil


class Country {
    
    let name: String
    var capitalCity: City!
    init(name: String, capitalName: String) {
        self.name = name
        self.capitalCity = City(name:  capitalName, country: self)
    }
}

class City {
    
    let name: String
    unowned let country: Country  // unowned ---> beshoznaya ssulka
    
    init(name: String, country: Country) {
        self.name = name
        self.country = country
    }
}

var country = Country(name: "Spain", capitalName: "Madrid")

print("The capital of \(country.name) is \(country.capitalCity.name)")



//2 . Описать несколько структур – любой легковой автомобиль и любой грузовик.
//3. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
//4. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенногообъема.
//5. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.

enum VehicleAction{
    case engineAction
    case windowsAction
    case cargoAction
    case travelAction
}


struct Auto {
    
    var name: String
    var year: String
    var type: String
    var windowsOpened: Bool
    var engineOn = true
    var trunkLoaded: Bool
    var volumeEngine: Int
    var volumeTank: Int
    
    mutating func carAction (action: VehicleAction) {
        
        switch action {
        case .engineAction:
            engineOn = true
            print("Engine is started")
            engineOn = false
            print("Engine is stopped")
        case .windowsAction:
            windowsOpened = true
            print("Windows are opened")
            windowsOpened = false
            print("Windows are closed")
        case .cargoAction:
            trunkLoaded = true
            print("The cargo is loaded")
            trunkLoaded = false
            print("The cargo is dont load")
        case .travelAction:
            if volumeTank < 10 {
                print("You must tanking your car !!!")
            } else if  volumeTank > 20 && volumeTank <= 30 {
                print("You have fuel for 300 kilometers drive")
            } else if  volumeTank > 30 && volumeTank <= 40 {
                print("You have fuel for 400 kilometers drive")
            } else if  volumeTank > 50 && volumeTank <= 60 {
                print("You have a full tank and for 400 kilometers drive")
            }
        }
    }
}
struct Truck {
    let name: String
    var year: String
    var engineOn: Bool
    var fuelTanking = 500
    var downloadWeight: Int
    var distance = 1200
    var windowsAction: Bool
    
    mutating func truckAction (action: VehicleAction) {
        
        switch action {
        case .engineAction:
            engineOn = true
            print("Engine is started")
            engineOn = false
            print("Engine is stopped")
        case .windowsAction:
            windowsAction = true
            print("Windows are opened")
            windowsAction = false
            print("Windows are closed")
        case .cargoAction:
            if downloadWeight > 3000 {
                print("The weight of cargo is biggest then max doenload")
            } else if downloadWeight > 3000 {
                print("You can download a cargo")
            }
        case .travelAction:
            if distance > 1000{
                print("You must tanking a Truck to 300 liters")
            } else if distance <= 300 {
                print("You can go")
            }
        }
    }
}

var car = Auto(name: "Audi", year: "2016", type: "coupe", windowsOpened: false, engineOn: true, trunkLoaded: true, volumeEngine: 3000, volumeTank: 50)

var truck = Truck(name: "Volvo", year: "2019", engineOn: true, downloadWeight: 4000, windowsAction: true)

//6. Инициализировать несколько экземпляров структур. Применить к ним различные действия.

car.carAction(action: .travelAction)
car.carAction(action: .windowsAction)
truck.truckAction(action: .travelAction)
truck.truckAction(action: .cargoAction)

//7. Положить объекты структур в словарь как ключи! а их названия как строки например
//var dict = [structCar: "structCar"]

print("Ya XZ kak sdelat' ne poluchalos'")



//8. Почитать о Capture List (см ссылку ниже) - и описать своими словами и сделать скрин своего примера и объяснения https://www.hackingwithswift.com/articles/179/capture..

//9. Набрать код который на белом скрине понять в чем там проблема и решить эту проблему

//10. У нас есть класс мужчины и его паспорта. Мужчина может родиться и не иметь паспорта,
//но паспорт выдается конкретному мужчине и не может выдаваться без указания владельца. Чтобы
//разрешить эту проблему, ссылку на паспорт у мужчины сделаем обычной опциональной, а ссылку на
//владельца у паспорта – константой. Также добавим паспорту конструктор, чтобы сразу
//определить его владельца. Таким образом, человек сможет существовать без паспорта, сможет его
//поменять или выкинуть, но паспорт может быть создан только с конкретным владельцем и никогда не
//может его сменить. Повторить все что на черном скрине и решить проблему соблюдая все правила!


class PersonMan {
    
    let name: String
    var passNumber: String
    var passport: Passport!
    
    
    init(name: String, passNumber: String, number: Passport) {
        self.name = name
        self.passNumber = passNumber
    }
}

class Passport {
    unowned let passport: PersonMan
    init (passport: PersonMan) {
        self.passport = passport
    }
    deinit {
        print("Man loosed a passport")
    }
}

