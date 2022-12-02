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
array.removeLast()
array.removeFirst()
array
