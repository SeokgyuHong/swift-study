import UIKit


//변수 상수 개념

var str = "Hello, playground"

var age = 10


age = 20
age = 30
age = 55

str = "hello"
str = "hi"

//Swift 언어 특징
// Safe type하다. 타입안전한 language, 타입이 엄격함
//타입 세이프 하다는것은 타입이 정해져있기때문에 컴파일시에 문제를 잡아낼 수 있는것을 의미한다.
//타입이 정해진 개념이 있다.


//age = "hello"
//str = 111

//상수
//let guestName = "john"
//
//guestName = "kim"
//

//Type Annotations

//var str2: String = "Hello, playground"
//var myAge: Int = 0

//var screenHeight: Float = 560
//
//var sum = myAge + screenHeight


//BOoleans

var isOpen: Bool = false

if !isOpen{
print("123")
}
else{
    
}


//Tuples (n짝, n쌍)
//여러개의 상태의 값들을 넣어야 할 경우 튜플로 만들 수 있다.

var topTitle = ("메인화면", "mainIcon.png") //쌍으로 이뤄져서 사용할 수 있는 형태

topTitle.0
topTitle.1

//http status code
//code와 description이 매핑됨. 404 not found가 쌍으로 이뤄져있다.
//var httpError = (404, "not found")

//httpError.0 //눈에 잘 안들어오기때문에 이렇게 잘 사용하지 않음. 키밸류 형식으로 사용
//httpError.1

var httpError = (statusCode: 404, description: "not found")

httpError.statusCode
httpError.description


