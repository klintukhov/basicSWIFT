import UIKit

var str = "Hello, playground"

// Dictionary

"""
Словарь представляет собой контейнер, который хранит несколько значений одного и того же типа. Каждое значение связано с уникальным ключом, который выступает в качестве идентификатора этого значения внутри словаря. В отличие от элементов в массиве, элементы в словаре не имеют определенного порядка. Используйте словарь, когда вам нужно искать значения на основе их идентификатора, так же как в реальном мире словарь используется для поиска определения конкретного слова.

"""

// Practice part 1

let dict : [Int : String] = [0 : "mama" , 1 : "papa"]
// let Dictionary : <String, Double> = ["papa" : 23.0] =======> Generic
let dict1 = [0 : "mama" , 1 : "papa"]

let names = ["papa" : "Pavel", "mama" : "Iryna"]
names["papa"] // calling value "Pavel" wit key "papa"

var namesOfIntegers = [Int : String]()
namesOfIntegers.count
namesOfIntegers.isEmpty

var dictionary = ["car" : "mercedes", "phone" : "iphone"]
dictionary.count
dictionary.isEmpty

dictionary["mama"] = "Ira" // append new element to dictionary v1
dictionary.updateValue("KHM", forKey: "home") // updating new value to dictionary v2

dictionary.keys // ===
dictionary.values // ===

dictionary["car"] = nil // removing element from dictionary v2

dictionary.removeValue(forKey: "phone") // removing element fron dictionary v2

namesOfIntegers = [:] // delete all elements from value
namesOfIntegers.removeAll()

dictionary.removeValue(forKey: "car") // removing value for key
for key in dictionary.keys {
    print ("keys of dictionary : \(key), values - \(dictionary[key]!)") // vuvud znacheniy key & value v1
}

for (key, value) in dictionary {
     print ("keys of dictionary : \(key), values - \(value)") // vuvod znacheniya key & value v2
}

for value in dictionary.values {  // === vuvud value
     print ("value in dictionary \(value)")
}


// Homework


//1 Создать 10 разных Dictionary с разными типами данных.Один из них должен содержать все месяца года на русском.Второй на английском Соберите все ключи и значения каждого Dictionary и распечатайте в консоль


//
var dOne = [1 : 1, 2 : 2, 3 : 3]
//
var dTwo = ["a" : 1, "b" : 2, "c" : 3, "d" : 2, "e" : 4,]
//
var dThree = ["japan" : "tokio", "france" : "paris", "deutschland" : "berlin", "england" : "London"]
//
var floatNumbers  = [4 : 1.22,  5 : 1.23, 6 : 1.24, 7 : 1.25 ]
for (key, value)in floatNumbers {
    print("the value  of \(key) number is \(value)")
}
//
var schools = ["school#1" : "centr", "school#2" : "south", "school#3" : "west"]
for (key, value) in schools {
    print ("\(key), in the  \(value) part of the city")
}

//
var days = ["year" : 365, "month" : 30, "week" : 7]

for day in days {
    print (day)
}

//
var monthEng = [ 1 : "january ", 2 : "february", 3 : "march", 4 : "april", 5 : "may", 6 : "june", 7 : "July", 8 : "august", 9 : "september", 10 : "november", 11 : "december", 12 : "january"]

for (key, value) in monthEng {
    print ("the name of \(key)th month is \(value)")
}
var monthRus = [ 1 : "январь ", 2 : "февраль", 3 : "март", 4 : "апрель", 5 : "май", 6 : "июнь", 7 : "июль", 8 : "август", 9 : "сентябрь", 10 : "октябрь", 11 : "ноябрь", 12 : "декабрь"]

for (key, value) in monthRus {
    print ("имя \(key)го месяцв -  \(value)")
}

//2 Создайте пустой Dictionary и через условный оператор if проверьте пустой он или нет если пустой то в условии добавьте в него пару значений􏰀

var emptyDict = [Int : String] ()
if emptyDict.isEmpty {
    emptyDict[2] = "two"
}
for (key, value) in emptyDict {
    print ("the value of key # \(key) is \(value)")
}

//3 Cоздайте словарь — ключ: «иномарка», «значение»: название машины.

var auto = ["import" : "honda"]

// Добавьте в него значение по ключу - «отечественная». Распечатайте ключи и значения в консоль. Затем отдельно только значения.

auto["domestic"] = "vaz"

//Распечатайте ключи и значения в консоль.

for (key, value) in auto {
    print ("the \(key) is \(value)")
}

// Затем отдельно только значения.

for value in auto.values {
    print (value)
}

//Удалите из словаря иномарку по ключу (двумя способами: через nil и removeValue().

auto.removeValue(forKey: "import")  // v1
auto["import"] = nil                // v2

//4 Создайте словарь, где ключ — фамилия солдата, а значение — его приветствие.

let greeting = ["ivanov" : "zdraviya zhelayu tov mayor!!", "sidorov" : "zdraviya zhelayu tov leytenant!!", "petrov" : "zdraviya zhelayu tov kapitan!!"]

// В цикле пройдитесь по всем ключам и распечатайте фамилию каждого солдата.
for surname in greeting.keys {
    print (surname)
}

// Сделайте тоже самое со значениями и распечатайте приветствие каждого солдата.
for greet in greeting.values {
    print (greet)
}
