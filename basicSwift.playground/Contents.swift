import UIKit

// Optional types

// v1

var date: String?
// date = nil ==== ne delat'

date = "15.12.2022"

if date != nil {                    // proverka na nil
    print("date is  \(date)")
} else {
    print("date dont downloaded")
}


// v2
var date2: String?

date2 = "20.12.2022"

if let unwrappedDate = date2 {          // Optional banding
    print("today is \(unwrappedDate)")  // creating variable
} else {
    print("date dont downloaded")
}

// v3

var date3: String? // unwrapping

date3 = "30.12.2022"
print("today is \(date3!)")

if date3 != nil {       // proverka na nil
    print("today is \(date3!)")
} else {
    print("date dont downloaded")
}

// v4
let age1 = "20"

print(Int(age1))
if age1 != nil{
    let age1Int = Int(age1)!
    print(age1 )
}

// v5
var apples: Int? = 52
if apples != nil {
    print("yes, \(apples)")
} else {
    print("yes")
}
let a = apples! + 2
if var oranges = apples {  // Optional banding
    oranges = oranges + 2
}


// 1) Создать 5 констант со СТРОКАМИ которые содержат цифры и посчитайте их используя новые инструменты.

let stOne: String? = "10"

let stTwo: String? = "5"

let stThree: String?  = "15"

let stFour: String? = "20"

let stFive: String? = "30"

var sumLets = Int(stOne)! + Int(stTwo)! + Int(stThree)! + Int(stFour)! + Int(stFive)!
if sumLets != nil {
    print("sum of numbers - \(sumLets)")
} else {
    print("uncorrected dates")
}


// 2)Создать 3 константы со значением nil.

let color: String! = nil
let age: Int! = nil
let liters: Double! = nil

// 3)Создать 5 опциональных типов констант и установите им значения.

let animal: String? = "wolf"
let price: Double? = 1950.99
let macbook: Bool? = true
let count: Int = 33
let number: Float = 232.2324242424


// 4)Вспоминаем прошлые уроки : Распечатайте свое имя в цикле for.

var myName = "Grigoriy"
for name in myName {
    print(name)
}
