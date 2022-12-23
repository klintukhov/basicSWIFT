import UIKit

func sayHi() {
    print("Hi")
}
// v1
var arrayJournal = [String]()

func addStudent (name: String, profession: String) {
    arrayJournal.append(name)
    arrayJournal.append(profession)
    print(arrayJournal)
}

addStudent(name: "John", profession: "Ios dev")
addStudent(name: "Jack", profession: "Andriod Dev")
addStudent(name: "Ivan", profession: "Java")
arrayJournal

//v2
func calculator (number1: Int, number2: Int) -> Int {
    
    return number1 + number2
}
calculator(number1: 2, number2: 3)

let sum = calculator(number1: 2, number2: 3)
print(sum )

// v3

var money = [1, 13, 10, 22, 44, 64]
var money2 = [100, 50, 50, 20, 20]

func calculateMoney (InArray: [Int]) -> Int {
    var sum = 0
    for i in InArray {
        sum += i
    }
    return sum
}
calculateMoney(InArray: money)
calculateMoney(InArray: money2)

let sum2 = calculateMoney(InArray: money) + calculateMoney(InArray: money2)
print(sum2)

func generalFunc(answer: Bool) -> () -> String {
    
    func sayYes () -> String {
        
        return "Yes"
    }
    func sayNo () -> String {
        return "no"
    }
    
    return answer ?  sayYes : sayNo // ternarnuy operator
}

// 1) Создать 3 функции:

// первая функция принимает массив Int и сортирует его по порядку (возрастание). После
//этого распечатывает результат в консоль;




var arrayNumbers1 = [8, 4, 3, 5, 2, 1, 9, 7, 0]

func sortOne (Int: [Int]) {
    
    arrayNumbers1.sorted()
}
sortOne(Int: arrayNumbers1)

//  вторая функция принимает массив String, меняет 1, 2 и 3 элементы и сортирует по
// алфавиту. После этого распечатывает результат в консоль;

var letters = ["c", "d", "f", "g", "j"]

func sortChar (Str: [String]) {
    letters[0] = "A"
    letters[1] = "B"
    letters[2] = "C"
    letters.sorted()
    print(letters.sorted())
}
sortChar(Str: letters)

//  третья функция принимает 2 массива String и складывает их. После этого
// распечатывает результат в консоль.

let autoArray1 = ["mercedes", "audi", "bmw"]
let autoArray2 = ["vaz", "azlk", "lada"]


func summAutos (first: [String], second: [String]) {
    first + second
}
let sumArrays = summAutos(first: autoArray1, second: autoArray2)
print(sumArrays)

// 2) Создать журнал для учителя, который будет принимать имя студента, профессию и оценку и записывает это все в массив. И внесите 10 студентов туда и распечатаете через цикл for.

var studentJournal = [String]()

func addStudent (name: String, proff: String, mark: String) {
    studentJournal.append(name)
    studentJournal.append(proff)
    studentJournal.append(mark)
}
addStudent(name: "Ihor", proff: "monter", mark: "5")
addStudent(name: "Oleh", proff: "doctor", mark: "4")
addStudent(name: "Sasha", proff: "voditel", mark: "5")
addStudent(name: "Vasylii", proff: "bankir", mark: "5")
addStudent(name: "Andrei", proff: "sportsmen", mark: "4")
addStudent(name: "Vitalii", proff: "menedszher", mark: "5")
addStudent(name: "Boris", proff: "programmist", mark: "5")

for student in studentJournal {
    print(student)
}

// 3) Создать функцию которая принимает имя и фамилию, потом положить это в массив и вывести результат в консоль.


var nameSurname = [String]()

func addDates (name: String, surname: String) {
    
    nameSurname += [("\(name) \(surname)")]
}
addDates(name: "Vsya", surname: "Fedorov")
addDates(name: "Oleg", surname: "Sidorov")
addDates(name: "Semen", surname: "Ivanov")
addDates(name: "John", surname: "Travolta")
nameSurname


// 4) Создайте функцию которая принимает параметры и вычисляет площадь круга.

let pi = 3.1415

func circleArea (radius: Double) {
    let sumCircle = pi * (radius * radius)
}
circleArea(radius: 49)


// 5) Создайте Dictionary с именем ученики , где ключ name и score, а значение (1 тюпл из 5 имен) и (второй тюпл из 5 оценок).И распечатайте только имена по ключу.


let dictSchoolboy = (name : ("John", "Jack", "Nikolas", "Tom", "Chris"), score: (3, 5, 4, 3, 5))

let (name, score) = dictSchoolboy


print(dictSchoolboy.name)

// 6) Функция принимает 3 массива String. Задача: сложить их вместе, преобразовать в тип Int и посчитать сумму. Распечатать результат в консоль.


let array1 = ["2", "4", "6"]
let array2 = ["1", "3", "7"]
let array3 = ["9", "5", "8"]


func sumArrays(arr1: [String], arr2: [String], arr3: [String]) -> [Int]{
    
    arr1 + arr2 + arr3
    let sum = arr1 + arr2 + arr3
    
    let intSum = sum.map {Int($0)!}
    var s = 0
    
    for i in intSum {
        s += i
        print(s)
    }
    return intSum
    
}
var arrayNumbers = sumArrays(arr1: array1, arr2: array2, arr3: array3)

var element = 0

for i in arrayNumbers {
    element += i
    print(element)
}



