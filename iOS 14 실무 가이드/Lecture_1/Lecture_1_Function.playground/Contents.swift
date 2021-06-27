import UIKit

var greeting = "Hello, playground"


//Function (함수)
//계산기 -> Class
// 더하기 기능 -> Function

let a = 10
let b = 20

func plus(num1: Int,num2: Int) -> Int{
    print("sum = ", num1 + num2)
    
    return num1 + num2
}


let sum = plus(num1: a,num2: b)

print(sum)


func plusTuple(num1: Int, num2: Int) -> (String, Int) {
    
    return ("결과값은 ", num1 + num2)
}


let p = plusTuple(num1: a, num2: b)


print(p)
print(p.0)
print(p.1)


func plus(_ num1: Int, _ num2: Int) ->Int {
    return num1 + num2
}

func minus(_ num1: Int, _ num2: Int) ->Int {
    return num1 - num2
}

func multiply(_ num1: Int, _ num2: Int) ->Int {
    return num1 * num2
}

//View, Present, Display

//연산 이후 뿌려주는 로직도 필요하다.

var inputButtonType = "+"


//화면에 뿌려주는것 글자를 더해서 ㅂ사용할 함수(파라미터로 넘어온)를 이용해
func displayCalc(result: (Int, Int) -> Int) {
    print("연산결과", result(a,b))
}


//각 역할을 분리해서 깔끔하게 만들 수 있어야한다. 
if inputButtonType == "+" {
    displayCalc(result: plus(num1:num2:))
}else if inputButtonType == "-"{
    displayCalc(result: minus)
}else if inputButtonType == "*" {
    displayCalc(result: multiply)
}

