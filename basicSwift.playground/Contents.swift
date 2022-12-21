import UIKit

for i in 0...200 {
    if i == 15 {
        break
    }
    print(i)
}

var day2 = 7

if day2 == 1 {
    print("work day")
} else if day2 == 2 {
    print("work day2")
} else if day2 == 3 {
    print("work day")
} else if day2 == 4 {
    print("work day")
} else if day2 == 5 {
    print("today is friday")
} else if day2 == 6 {
    print("weekand")
} else if day2 == 7 {
    print("weekand")
}


let day = 3

switch day {
case 1...4:
    print("work day")
case 5:
    print("work day, Friday")
case 6:
    print("weekend Saturday")
case 7:
    print("weekand Sunday")
default:
    break
}

// v1
for i in 0...200  {
    if i == 15 {
        print(i)
    } else if i == 200 {
        print(i)
        break
    }
}

// v2
for i in 0...50 {
    for i in 0..<20 {
        if (i < 15) {
            print(i)
            continue
        }
        if i == 10 {
            break
        }
    }
}

// v3

first: for i in 0...200  {
    if i == 15 {
        print(i)
        break first
    }
    continue
    i == 199
    print(i)
}




let nameWork = "Swift dev"
let age1 = 1205
let peopleSex = "M"

switch (nameWork, age1) {
case (_, 1...17):
    print("sorry, you are tio young")
case ("Swift dev", 18...50) where peopleSex == "W":
    print("sorry, but all positions for women are occupied")
case ("Swift dev", 18...50) where peopleSex == "M":
    print("thats all right")
case (_, 130..<Int.max):
    print("Hello Dunkan MClaud, you have a job!!!")
case let (name, age):                               // value banding
    print("\(name), in \(age) year, really?")
default:
    print("incorrect date")
}


// 1) Создать цикл в цикле. В первом цикле интервал 200 раз во втором как доедем до 15 выйти со всех циклов:)

for i in 0...200 {
    if i == 15 {
        print(i)
        break
    }
}

// 2)Создать в if и отдельно в switch программу которая будет смотреть на возраст человека и говорить куда ему идти в школу, в садик, в универ, на работу или на пенсию и тд

// v1
var age = 12

if age == 0 {
    print("You are birth")
} else if age >= 2 && age <= 5  {
    print ("go too kindergarten")
} else if age >= 6 && age <= 16 {
    print("go to school")
} else if age >= 17 && age <= 55 {
    print("go to the work")
} else if age >= 56 && age <= 100 {
    print("go to retirement")
} else if age >= 101 && age <= Int.max {
    print("Hello Duncan Mckaud")
}

// v2

var age2 = 23

switch age2 {
case 0:
    print("You are birth")
case 1...5:
    print("Go to children garden")
case 6...17:
    print("go to school")
case 18...24:
    print("go to the univercity")
case 25...55:
    print("go to the work")
case 56...100:
    print("go to the retirement")
    
default:
    print("you are \(age2) and you must")
}


// 3)Создать все циклы for in которые вы знаете ,максимально больше приветствуеться

// v1
for i in  0...50 {
    if i == 15 {
        break
    } else if i == 20 {
        continue
    }
}

// v2
let cars = ["Audi", "Bmw", "Mercedes", "Toyota", "Honda", "Bentley"]

for (index, car) in cars.enumerated() {
    print("\(index) : is \(car)")
}
for car in cars {
    print("In the name of \(car) is \(car.count) letters")
}
for car in cars where car.first == "B" {
    print ("The cars with first letter is \(car )")
}
for car in cars where car.count <= 3 {
    print(" the car, which has less then 3 letters is \(car)")
}


// v3
let numbers = [1,2,3,4,5,6,7]
var sum = 0

for number in numbers {
    sum += number
    print(sum)
}
print(sum)
if sum < 30 {
    sum += 2
}
print("the count of numbers is \(sum)")


// v4
let championship = ["Jack": 3, "John": 1, "Bruce": 2]

for (man, place) in championship {
    print("\(man) won the \(place) place, congratulations!!!")
}


// 4 )в switch и отдельно в if создать систему оценивания школьников по 12 бальной системе и и высказывать через print мнение


let mark = 122

if mark >= 1 && mark <= 6 {
    print("yor mark is \(mark), you must study much better")
} else if mark >= 7 && mark <= 10 {
    print("yor mark is \(mark), not bad sit down")
} else if mark >= 11 && mark <= 12 {
    print("yor mark is \(mark), its great!")
}

switch mark {
case 1...6:
    print("yor mark is \(mark), you must study much better")
case 7...10:
    print("yor mark is \(mark), not bad sit down")
case 11...12:
    print("your mark is \(mark), its great")
case let (mark):
    print("enter please correct dates")
default:
    print("yor mark is \(mark)")
}



// 5) Создайте массив(без тюплов) с именами всех членов вашей семьи включая родственников что б количество имен не менее 10 было и отсортируйте, распечатайте по алфавиту их в консоль

// v1
var familyNames = ["Pavel", "Iryna", "Grisha", "Denys", "Oksana", "Sasha", "Nataliia", "Dmitrii", "Nikolai", "Anna"]
for name in familyNames.sorted() {
    print(name)
}

// v2
familyNames.sorted()
print(familyNames.sorted())
