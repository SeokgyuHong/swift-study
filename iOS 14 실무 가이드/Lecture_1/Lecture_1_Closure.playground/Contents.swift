import UIKit

var greeting = "Hello, playground"

//Closure (클로저)

//func - 유사

//closure - 이름이 없음.
//클로저는 이름이 없기 때문에 받아서 사용하는 변수 또는 상수를 선언해줘야함 .

//func
func myScore(a: Int) -> String {
    return "\(a) 점"
}

let score = myScore
score(50)

//closure
let myScore2 = { (a: Int) -> String in
    return "\(a) 점"
}


//축약 (생략) 로직이 1줄인 경우 return을 생략 할 수 있따.
let myScore3 = { (a: Int) -> String in
        "\(a) 점"
}

//축약 (생략) 리턴 타입 리턴 타입을 "\(a) 점" 을 보면 String임을 알 수 있다. 반환형 생략 가능
let myScore4 = { (a: Int) in
    "\(a) 점"
}

let myScore5: (Int) -> String = { a in
    "\(a) 점"
}

let myScore6: (Int) -> String = {
    "\($0) 점"
}
let myScore7: (Int, Int) -> String = {
    "\($0) \($1) 점"
}
myScore7(20,30)
myScore5(200)


