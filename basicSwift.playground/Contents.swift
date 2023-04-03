import UIKit


import Darwin



let a = String()

extension String {
    
    func sayHello() {
        print("Hello")
    }
}

let hello = "Hi"

hello.sayHello()

let b = String()
b.sayHello()

extension Int {
    
    var squared: Int {
        return (self * self)
    }
}

var newInt = 30
2.squared

extension Int {
    
    func funcSquared() -> Int {
        
        return(self * self)
    }
}

10.funcSquared()
var sqrInt = 5
sqrInt.funcSquared()


class Vasia {
    
    var nickName = "IOS developer"
}

let realVasia = Vasia()
realVasia.nickName

extension Vasia {
    
    func allInfo() -> String {
        return("My name is Vasia, my nick is \(nickName)")
        
    }
}

let realVasia2 = Vasia()
realVasia.allInfo()

// 3)Расширить String, чтобы принимал сабскрипт вида s[0..<3] и мог также устанавливать значения используя его

extension String {
    
    subscript(speed: Range<Int>) -> String {
        return("\(speedCity)\(speed.startIndex) \(speed.endIndex)")
        }
}

let speedCity = "Max speed in the city is - "
print("Max speed in the city is - \(speedCity)" [0..<60])
print(speedCity [0..<60])


// 4) Расширить Int и добавить 3 метода возведение в квадрат, куб, степень

// v.1
extension Int {
    
    func intSquare() -> Int {
        return(self * self)
    }
    
    
    func intCube() -> Int {
        return(self * self * self)
    }
    
    func decimal() -> Int {
        return(NSDecimalNumber(decimal: pow(Decimal(self), self)).intValue)
        
    }
}

var myInt = 4

myInt.intSquare()
myInt.intCube()
myInt.decimal()

// v.2

class Calculate {
    var number = Int()
    init(number: Int) {
        self.number = number
        
    }
}

extension Calculate {
    
    func square() -> Int {
        return(self.number * self.number)
    }
    
    func cube() -> Int {
        return(self.number * self.number * self.number)
    }
    
    func decimal() -> Int {
        return(NSDecimalNumber(decimal: pow(Decimal(self.number), self.number)).intValue)
        
    }
}
var calk = Calculate(number: 4)
calk.square()
calk.cube()
calk.decimal()

// 5)Расширить еще 3 структуры на свой вкус и в коментах обосновать для чего это было сделано

// calculating meters to milimeters

var meter: Int?

extension Int {
    
    func milimeters() -> Int {
        
        return(self * 1000)
    }
}

var forCalculate = 28

forCalculate.milimeters()

meter = 10.milimeters()


// calculating consumption of fuel in car (for car with consumption 7.5 ltr / 100 km)

var distance: Double?

extension Double {
    
    func calculateConsumption() -> Double {
        return ((self * 7.5) / 100)
    }
    
    func printKm() -> String {
        return("You need \(calculateConsumption()) liters for distance \(self.distance)")
    }
}

distance = 1700
distance?.calculateConsumption()
distance?.printKm()


// converter currency

var dollarUsa = 100.00
var rub = 5000.00

extension Double {
    
    func currencyRub() -> Double {
        return(dollarUsa * 78)
    }
    
    func currencyDoll() -> Double {
        return(rub / 78)
        
    }
}
dollarUsa = 150
rub = 5000

dollarUsa.currencyRub()
rub.currencyDoll()


// 6)Добавьте проперти, которое возвращает количество символов в числе

extension Int {
    
    func digitsCount() -> Int {
        return String(self).count
    }
}

var digit = 532323
digit.digitsCount()


// 7)Добавить метод который говорит число положительное или отрицательное


extension Int {
    
    func whichNumber() {
        
        if self == 0 {
            print("Entered number is zero")
            
        } else if self < 0 {
            
            print("the number < 0")
            
        }   else {
            
            print("Entered number  > 0")
        }
    }
}

let num = 332
num.whichNumber()


