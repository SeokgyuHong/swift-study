import UIKit

var greeting = "Hello, playground"

//Control Flow (흐름 제어)


//for

let name = "234234234234234"

for char in name {
    print((Int(String(char)) ?? 0) * 10)
}

let names = ["lee", "kim", "min"]

for name in names {
    print(name)
}

let numberOfLegs = ["ant" : 6, "dog" : 4]

for element in numberOfLegs {
    print(element)
}

for index in 0...5 {
    print(index)
}

let namesList = ["kim","lee","hen"]

for index in 0..<namesList.count{
    print(index)
}

//while (주의를 해야하는반복문)
//무한루프에 빠질 수 있다.

//let a = 0
//
//while (a == 0) {
//
//
//}

//Switch
//조건에 대한 케이스를 만들어서 분기처리

let b = "b"

switch b {
case "b":
    print("b")

}
