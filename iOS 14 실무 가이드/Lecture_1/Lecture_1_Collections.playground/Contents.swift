import UIKit

var greeting = "Hello, playground"


//Collections type
//집합 타입


//Array
//Swift - type safe array 안에 들어가는 값의 타입이 지정되어있어야한다.
var myNames = Array<String>()

var myAges = [Int]()

myNames.append("kim")
myNames.append("lee")
myNames.append("jin")



//방어코드
//안전한 코딩 스타일

let index = 3

if myNames.count > index {
    myNames[index]
}

myNames.append(contentsOf: ["hi", "hello"])


myNames.remove(at: 0)

print(myNames)


myNames.insert("hahaha", at: 0)

print(myNames)

for name in myNames {
    print(name + "님")
}

for (idx, name) in myNames.enumerated() {
    print(idx)
    print(name)
    
}

//set

var names = Set<String>()
names.insert("kim")
names.insert("min")
names.insert("lee")

names.insert("lee")

var names2:Set<String> = ["lee","kim","min"]

var numbers1: Set<Int> = [1,2,3,4,5]

var numbers2: Set<Int> = [4,5,6,7,8]

//교집합
numbers1.intersection(numbers2)

numbers1.union(numbers2)


//Dictionary
var namesOfStreet = [String : Any]()

namesOfStreet["302ro"] = "1st Street"
namesOfStreet["303ro"] = "2nd Street"
namesOfStreet["304ro"] = 3



for dic in namesOfStreet{
    print(dic.key)
    print(dic.value)
    print(dic)
}
