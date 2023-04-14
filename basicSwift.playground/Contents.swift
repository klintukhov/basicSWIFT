import UIKit

var str = "Hello, playground"

protocol RouterDelegate {
    var nameId: [String] {get set}
    func saveName(name: String, text: String)
}

protocol UsersProtocol {
    var name: String {get set}
    var age: Int {get set}
    
    var delegate: RouterDelegate? {get set}
    
    init(name: String, age: Int, delegate: RouterDelegate?)
}

//MARK - Class

class Router: RouterDelegate {
    var nameId: [String] = []
    
    func saveName(name: String, text: String) {
        nameId.append(name)
        nameId.append(text)
    }
}

class User: UsersProtocol {
    var name: String
    var age: Int
    var delegate: RouterDelegate?
    
    func sendMail(name: String, text: String) -> Bool {
        delegate?.saveName(name: name, text: text)
        return true
    }
    
    required init(name: String, age: Int, delegate: RouterDelegate?) {
        self.name = name
        self.age = age
        self.delegate = delegate
    }
}

let routerDelegate = Router()

let userOne = User(name: "John", age: 22, delegate: routerDelegate)

userOne.sendMail(name: "Anna", text: "Hello hello")
userOne.sendMail(name: "Petr", text: "Hi, Petr")

let userTwo = User(name: "Semen", age: 33, delegate: routerDelegate)
userTwo.sendMail(name: "Bob", text: "Hi")

routerDelegate.nameId



//0)Изучить раздел "Протоколы -> Делегирование" в документации.
//1) Проработать код из видео.
//2) Создать 2 протокола:
//1- "Начинай писать код" со свойствами: время, количество кода.
//И функцией writeCode()
//2- "Заканчивай писать код" с функцией: stopCoding()
//И класс: Разработчик, у которого есть свойства - количество программистов, специализации(ios, android, web).
//Разработчику подключаем два этих протокола. Задача: вывести в консоль сообщения - "разработка началась. пишем код" и "работа закончена. Сдаю в тестирование".


//MARK: Start protocol

protocol StartCoding {
    
    var time: Double {get set}
    var devCount: Int {get set}
    func beginCoding()
    
}

//MARK: Stop protocol

protocol StopCoding {
    func stopCoding()
}

//MARK: Enumeration developers specs

enum TypeDev {
    
    case Swift
    case cottlin
    case java
    case python
    
}

//MARK: Creating Developer class


class Developer: StartCoding, StopCoding {
    
    var time: Double
    
    var devCount: Int
    
    var typeDev: TypeDev
    
    var developing: StartCoding?
    
    
    func beginCoding() {
        print("Developer(s) in count \(devCount) member(s) beginned wrote code on \(typeDev)")
    }
    
    func stopCoding() {
        print("Developer(s) in count \(devCount) member(s) finished wrote code on \(typeDev), with total time - \(time) minutes")
        
    }
    
    required  init(time: Double, devCount: Int, typeDev: TypeDev) {
        
        self.time = time
        self.devCount = devCount
        self.typeDev = typeDev
    }
}

let swiftTeam = Developer(time: 300, devCount: 5, typeDev: .java)
let cottlinTeam = Developer(time: 360, devCount: 6, typeDev: .cottlin)
let javaTeam = Developer(time: 267, devCount: 7, typeDev: .java)
let pythonTeam = Developer(time: 343, devCount: 3, typeDev: .python)


pythonTeam.beginCoding()
pythonTeam.stopCoding()

swiftTeam.beginCoding
swiftTeam.stopCoding()

pythonTeam.beginCoding()
pythonTeam.stopCoding()


let developersArray: [AnyObject] = [swiftTeam, cottlinTeam, javaTeam, pythonTeam]

