import UIKit

var greeting = "Hello, playground"

//String

let myName = "lee min kim"
for character in myName{
    print(character)
}

let myLongStr =
"""
hi
hello
welcome
"""

print(myLongStr)


let isOn = false
isOn.description


print(isOn.description)
print(isOn)
let number = 123

print(number.description)
print(number)
print(String(number))

print(type(of: number))
print(type(of: number.description))
 

let myNumber = 12.33
String(myNumber).split(separator: ".")
 
