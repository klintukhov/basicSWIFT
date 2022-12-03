import UIKit


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

print (deutschAuto )
let chuffleDeutschAuto = deutschAuto.shuffled() // creating new value for main array
deutschAuto.shuffle() // changing main array
print (deutschAuto)


// filtrating of array

var filterDeutschAutoFirst = deutschAuto.filter { deutschAuto   in // filtration array on first letter "b"
    deutschAuto.first == "b"
}
 print (filterDeutschAutoFirst)

let filterDeutschAutoLast = deutschAuto.filter { deutschAuto   in // filtration array on last letter "a"
    deutschAuto.last == "a"
}

print (filterDeutschAutoLast)
