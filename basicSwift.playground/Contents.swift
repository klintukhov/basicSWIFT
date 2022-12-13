import UIKit

var str = "Hello, playground"

let tuple = (1, "Alex", 33.7, "boolValue")

let (numberOne, name, number, boolValue) = tuple

numberOne // vuvod znacheniya v1
name
number
boolValue

//let (_, b, _, _) = tuple // vuvod znacheniya v2


tuple.0
tuple.1

let names = (name1: "John", name2: "Jack", name3: "Leo") // vuvod v3
names.name1

let name1 = "Alex"
let age = 23

print((name1, age ))

let exampleOne = (1, 2, 4.2)
let exampleTwo = (2, 3, 3)

let (one, two, three) = exampleOne
let (one1, two1, three1) = exampleTwo



"""
3) Создать 5 разных Tuples с
разными типами данных.Один из них должен содержать все месяца года на русском.Второй на английском
4) Распечатайте Tuples 3 мя разными способами
5) Создайте пустой Tuples (Можно гуглить)
1) Создать кортеж с 3-5 значениями. Вывести их в консоль 3 способами.
2) Давайте представим, что мы сотрудник ГАИ и у нас есть какое-то количество нарушителей. Задача. Создать кортеж с тремя параметрами:
 первый - превышение скорости: количество пойманных;
 второй - вождение нетрезвым: количество пойманных;
 третий - бесправники: количество пойманных.
Распечатайте наших бедокуров в консоль через print().
3) Выведите каждый параметр в консоль. Тремя способами.
4) Создайте второй кортеж — нашего напарника. Значения задайте другие.
5) Пусть напарники соревнуются: создайте третий кортеж, который содержит в себе разницу между первым и вторым.
Вывести в консоль тремя способами.
"""

// 1) Создать 5 разных Tuples сразными типами данных.Один из них должен содержать все месяца года на русском.Второй на английском
// 2) Распечатайте Tuples 3 мя разными способами

let tupleOne = (1, "wordOne", 2.2, boolValue, 3.3334)
let (valueOne, valueTwo, valueThree, valueFour, valueFive) = tupleOne
//v1
valueOne
valueTwo
valueThree
//v2
let (_, b, _, _, _) = tupleOne
let (_, _, c, _, _) = tupleOne
//v3
tupleOne.0
tupleOne.1
tupleOne.3

let tupleTwo = (boolValue, 5.332, "wordTwo", 4, "2")
let (valOne, valTwo, valThree, valFour, valFive) = tupleTwo
//v1
valOne
valTwo
valThree
//v2
let (a, _, _, _, _) = tupleTwo
//v3
tupleTwo.0
tupleTwo.1
tupleTwo.3

let monthEng = (month1: "january", month2: "february", month3: "march", month4: "april", month5: "may", month6: "june", month7 :"July", month8: "august", month9: "september", month10 :"november", month11:"december", month12: "january")
let (month1, month2, month3, month4, month5, month6, month7, month8, month9, month10, month11, month12) = monthEng
//v1
month5
month6
month7
//v2
monthEng.month10
monthEng.month1
monthEng.month3
//v3
monthEng.0
monthEng.1
monthEng.3

let monthRus = (monthRus1: "январь", monthRus2: "февраль", monthRus3: "март", monthRus4: "апрель", monthRus5: "май", monthRus6: "июнь", monthRus7: "июль", monthRus8: "август", monthRus9: "сентябрь", monthRus10: "октябрь", monthRus11: "ноябрь", monthRus12: "декабрь")
let (monthRus1, monthRus2, monthRus3, monthRus4, monthRus5, monthRus6, monthRus7, monthRus8, monthRus9, monthRus10, monthRus11, monthRus12) = monthRus
//v1
monthRus.monthRus1
monthRus.monthRus12
monthRus.monthRus3
//v2
monthRus3
monthRus5
monthRus11
//v3
monthRus.0
monthRus.3
monthRus.10

// 3) Создайте пустой Tuples (Можно гуглить)

//var myEmptyTuple: (key: String, val: Int, val2: String, boolVal: Bool) = () ?

// 4)  Создать кортеж с 3-5 значениями. Вывести их в консоль 3 способами.

let car = (name: "Audi", type: "sedan", countDoors: 4, fuelType: 95, mileage: 33500, price: 27500)
let (carName, type, counDoors, fuelType, mileage, price) = car
//v1
carName
type
counDoors
fuelType
//v2
car.0
car.1
car.2
//v3
car.name
car.type
car.countDoors
car.fuelType

print("For sale \(carName), the type of car is \(type), count of doors - \(counDoors). Mileage \(mileage). Price \(price) US")

// 5)  Давайте представим, что мы сотрудник ГАИ и у нас есть какое-то количество нарушителей. Задача. Создать кортеж с тремя параметрами:
// первый - превышение скорости: количество пойманных;
// второй - вождение нетрезвым: количество пойманных;
// третий - бесправники: количество пойманных.
//Распечатайте наших бедокуров в консоль через print().
// Выведите каждый параметр в консоль. Тремя способами.
//Создайте второй кортеж — нашего напарника. Значения задайте другие.
//Пусть напарники соревнуются: создайте третий кортеж, который содержит в себе разницу между первым и вторым.
//Вывести в консоль тремя способами.

let inspektorIvanov = (overSpeed: 7, drunkDriving: 4, withoutLicense: 6)
let (overSpeedI, drunkDrivingI, withoutLucenseI) = inspektorIvanov
inspektorIvanov.drunkDriving
inspektorIvanov.0
overSpeedI
inspektorIvanov
inspektorIvanov.overSpeed
inspektorIvanov.withoutLicense



let inspektorPetrov = (overSpeed: 3, drunkDriving: 2, withoutLicense: 4)
let (overSpeedP, drunkDrivingP, withoutLucenseP) = inspektorPetrov
inspektorPetrov.overSpeed
inspektorPetrov.0
overSpeedP
inspektorPetrov.drunkDriving
inspektorPetrov.withoutLicense

let diffSpeed = inspektorIvanov.overSpeed - inspektorPetrov.overSpeed
let diffDrunk = inspektorIvanov.drunkDriving - inspektorPetrov.drunkDriving
let diffLicense = inspektorIvanov.withoutLicense - inspektorPetrov.withoutLicense

let difference = (inspektorIvanov.overSpeed - inspektorPetrov.overSpeed, inspektorIvanov.drunkDriving - inspektorPetrov.drunkDriving, inspektorIvanov.withoutLicense - inspektorPetrov.withoutLicense)

let diff2 = (diffSpeed: "more by 4", diffDrunk: "more by 2", diffLicense: "more by 2")
print ("Indicators of inspektor Ivanov more betterr than inspektor Petrov on next parameters : cathed by violation of speed - \(diffSpeed), catched drunk drivers - \(diffDrunk), catched drivers without driving licence\(diffLicense)")

