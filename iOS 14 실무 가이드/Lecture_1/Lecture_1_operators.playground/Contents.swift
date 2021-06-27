import UIKit

var greeting = "Hello, playground"

//Basic Operations

// + - * / %(remainder operator)

//비교 연산자

let a = 20
let b = 30

a == b


//Unicode 범위 관련
//숫자만 입력 받아야 한다.
//키보드 제한 ->


let inputValue = "7"

if inputValue >= "\u{30}" && inputValue <= "\u{39}" {
    print("숫자다.")
}else{
    print("숫자가 아니다.")
}


//영어만 입력 해야한다.

"\u{41}"
