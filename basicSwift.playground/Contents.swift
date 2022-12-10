import UIKit

var str = "Hello, playground"


// ARRAYS
let constArray = ["a", "b", "c", "d"]
//                 0    1    2    3     ====>  indecsation of arrays. beginning from "0"
constArray.count

var array = [String]()
if array.count == 0 {
    print ("array is empty")
}
if array.isEmpty {
    print ("array is empty")
}

array += constArray

array += ["w"] // form of appending element to array. Only ["x"], [123] !!!
array.append("mama")

array[0] // vuzov elementa
array[1...5] // vuzov lementov
array[1..<3]

array.insert("-", at: 3) // appending of symbol "-" to array
array.remove(at: 2) // removing 2nd element of array
array.removeLast() // removing last element of array
array.removeFirst() // removing first element of array
array


// practice part 2
var deutschAuto: [String] = ["audi", "bmw", "mercedes", "porsche", "opel", "ford", "skoda"]
//                              0       1        2           3         4       5       6   ====>  indeks
let tttttttt = deutschAuto [2]
print (tttttttt) // prisvoenie peremennoy znacheniya indeksa 2
print (deutschAuto)
deutschAuto [2] = "dddddd" // zamene znacheniya indeksa 2
print(deutschAuto)
deutschAuto.append("aaaaaaa") // appending aaaaa to the array, in the end
deutschAuto.insert("wwwwwww", at: 3) // appending element wwwwwww to position 3
deutschAuto.remove(at: 3) // removing position 3 in array
print (deutschAuto)

// deutschAuto = []
// deutschAuto.removeAll() removing all elements of array
print (deutschAuto)

deutschAuto.removeFirst() // removing the first element of array
print(deutschAuto)

deutschAuto.removeLast() // removing the last element of array
print (deutschAuto )

let japanAuto = ["honda", "toyota", "nissan", "suzuki"]

deutschAuto += japanAuto // kankatenacuya massivov
deutschAuto.count
japanAuto.count
japanAuto.endIndex // indeks poslednego znacheniya
japanAuto.isEmpty // proverka na pustotu
print(deutschAuto )
let chuffleDeutschAuto = deutschAuto.shuffled() // creating new value for main array
deutschAuto.shuffle() // changing main array
print(deutschAuto)


// filtrating of array
let filterDeutschAutoFirst = deutschAuto.filter { deutschAuto   in // filtration array on first letter "b"
    deutschAuto.first == "b"
}
 print (filterDeutschAutoFirst)

let filterDeutschAutoLast = deutschAuto.filter { deutschAuto   in // filtration array on last letter "a"
    deutschAuto.last == "a"
}

print (filterDeutschAutoLast)


// practice 2

var shoppingList = ["eggs", "milk"]
print ("The shopping list is \(shoppingList.count)")
if shoppingList.isEmpty {
    print ("the shopping list is empty")
} else {
    print ("not empty")
}

shoppingList.append("flour")

shoppingList += ["baking powder", ""]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]

var firstItem = shoppingList[0]
shoppingList[0] = "six eggs"
shoppingList
shoppingList[4...6] = ["bananas", "apples"]
shoppingList
shoppingList.insert("maple syrop", at: 0)
shoppingList.remove(at: 0)

for index in shoppingList {
print (index)
}
for (index , value) in shoppingList.enumerated() {
    print ("Item \(index + 1) : \(value)")
}


let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

// 1) Создайте массив учеников из 12 мальчиков
var boysArray: [String] = ["Ihor", "Oleh", "Yevhenii", "Vasya", "Andrey", "Sasha", "Misha", "Vitalii", "Ehor", "Denys", "Illia",]


//  2) Добавьте 7 девочек: с помощью append и по определённому индексу: см. insert. Выведите результат в консоль.
var clas = boysArray

clas.append("Zhanna")
clas.append("Iryna")
clas.append("Sveta")
clas.append("Olga")
clas.insert("Lena", at: 2)
clas.insert("Vika", at: 4)
clas.insert("Nastya", at: 2)

// 3) Удалите 7 учеников так, чтобы получилось 5 мальчиков и 5 девочек. См. Удаление по диапазону. Выведите результат в консоль.
clas.count
clas.removeSubrange (0...1); (3...9)
clas.count
print(clas)


// 4) Создайте массив оценок от 0 до 5 и второй — от 6 до 10. Объедените два массива в один.

var marksLow = [0, 1, 2, 3, 4, 5]
var marksHigh = [6, 7, 8, 9, 10,]
var marksAll = marksLow + marksHigh  // 1st way
marksLow += marksHigh                // 2nd way

  
// 5) Присвойте каждому ученику оценку. Так, чтобы в консоли получилось примерно: «Вася — 5 баллов.Неплохо.».

marksAll
var mark = marksAll.randomElement()
for _ in marksAll{
}

for students in clas
{
    print("Hello \(students) your mark is \(mark!), its not bad")

}

//var markOne = "\(boysArray[1]), your mark is  \(marksHigh[2]), not bad)"  ====== ne pravilno


// 6) Создайте массив из чисел. Числа - это купюры в долларах. Посчитать количество денег и вывести в консоль.


var dollars = [5, 10, 10, 50, 100, 50 , 100, 100]
var sum = 0

for dollar in dollars {
    sum += dollar
}
print("you have just \(sum) dollars for tooday")







