import UIKit

var str = "Hello, playground"


let names = ["Oleh", "Ihor", "Pavel", "Andrey"]
names.sorted()
// v1
names.sorted {(s1: String, s2: String) -> Bool in
    return s1 < s2 }
// v2
names.sorted {(s1, s2 ) in return s1 < s2}
// v3
let t1 = names.sorted {(s1, s2) in s2.count < s1.count }
print(t1)


// avtomaticheskie imena argumentov

let t2 = names.sorted(by: {$0 > $1})
print(t2)
let t3 = names.sorted(by: {$0 < $1})
print(t3)

let t4 = names.sorted(by: {$0.count > $1.count})
print(t4)

// Zahvat znacheniy

func makeTranslator(Stroka: String) -> (String) -> (String) {
    return { (name: String) -> String in return (Stroka + " " + name)}
}
var englishGreet = makeTranslator(Stroka: "Hello")
englishGreet("John")
var rusGreet = makeTranslator(Stroka: "Privet")
rusGreet("Ivan")



// 1) Написать сортировку массива с помощью замыкания, сначала в одну сторону, затем в другую.Вывести всё в консоль.

var carsArray = ["A", "B", "C", "D", "e", "F"]
let sortCarsOne = carsArray.sorted(by: {$0 < $1})
print(sortCarsOne)
let sortCarsTwo = carsArray.sorted(by: {$0 > $1})
print(sortCarsTwo)


// 2) Создать метод который запрашивает имена друзей, после этого имена положить в массив. Массив отсортировать по количеству букв в имени.

var friendsNames = [String]()

func friendsAdd(name: String) {
    friendsNames.append(name)
}
friendsAdd(name: "Johny")
friendsAdd(name: "Jack")
friendsAdd(name: "Elizabeth")
friendsAdd(name: "Bob")

let sortNamesUp = friendsNames.sorted(by: {$0.count > $1.count})
print(sortNamesUp)

let sortNamesDown = friendsNames.sorted(by: {$0.count < $1.count})
print(sortNamesDown)


// 3) Написать функцию которая будет принимать ключи, выводить ключи и значения словаря (Dictionary). Тип ключа и значения выбирайте сами.


var marks = [2 : "number two", 3 : "number three"]

func showMark(keyDict: Int ) -> [Int:String] {
    
    let keyDict = marks
    for elements in marks {
        print(marks.keys)
    }
    return marks
}

print(showMark(keyDict: 2))

// 4) Написать функцию, которая принимает пустые массивы(один строковый, второй - числовой) и проверяет их: если пустой - то добавить значения и вывести в консоль.


var arrayInt = [2]
var arrayStr = [String]()


func addArray(arrayI: [Int], arrayS: [String]) {
    
    if arrayInt.isEmpty {
        arrayInt.append(3)
    }
    if    arrayStr.isEmpty {
        arrayStr.append(contentsOf: ["a", "c"])
    }
}
addArray(arrayI: arrayInt, arrayS: arrayStr)
(addArray(arrayI: arrayInt, arrayS: arrayStr))
print(arrayInt)
print(arrayStr)


//5) Написать 10 своих замыканий на примере сортировок массивов.

let closNames = ["Oleh", "Ihor", "Pavel", "Andrey"]
let sortedOne = closNames.sorted(by: {$0 > $1})
print(sortedOne)

let sortedTwo = closNames.sorted(by: {$0 < $1})
print(sortedTwo)

let sortedThree = names.sorted(by: {$0.count > $1.count})
print(sortedThree)

let sortedFour = names.sorted(by: {$0.count < $1.count})
print(sortedFour)

let arrayNumb = [2, 3, 1, 6, 5, 8, 4]
var arrayNumbOne = arrayNumb.sorted(by: <)
var arrayNumbTwo = arrayNumb.sorted(by: >)

func arraySort(n1 : Int, n2: Int) -> Bool {
    return n1 < n2
}

var sortX = arrayNumb.sorted(by: arraySort)


//6) Написать функцию, которая принимает массив, проверяет — пустой или нет. И если пустой — нужно записать туда значения.


var newArray = [1, 2, 4]

func elemArray(myArray: [Int]) {
    if newArray.isEmpty {
        newArray.append(1)
    } else {
        print("array \(newArray) is not empty")
    }
}
elemArray(myArray: newArray)
print(newArray)


//7) Написать функцию - сайт который требует имя, фамилию, ник, емейл, пароль. Всё вывести в консоль.

func webDates (name: String, surname: String, nick: String, email: String, password: String)  {
    print(name)
    print(surname)
    print(nick)
    print(email)
    print(password)
}

var web = webDates(name: "Ihor", surname: "Solovjev", nick: "Solovej", email: "solovey@gmail.com", password: "2342ddeew")


//8) Написать функции которые принимают в качестве аргументов массивы и словари и проверяют: пустые или нет. Если пустые — добавляют туда значения и выводят в консоль.

var arrayEx = [Int]()
var dictEx = [String:String]()

func addArray(array: [Int]) {
    if arrayEx.isEmpty {
        arrayEx.append(55)
    } else {
        print("array is not empty")
    }
}

func addDictionary(dict: [String : String]) {
    if dictEx.isEmpty {
        dictEx["Macbook"] = "MacOS"
    } else {
        print("dictionary is not empty")
        
    }
}

addArray(array: arrayEx)
arrayEx

addDictionary(dict: dictEx)
dictEx
print("for empty dictionary added next values \(dictEx)")




