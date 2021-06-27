import UIKit



var myAge: Int? = 0

myAge = nil
//값이 없다 -> nil

//값이 없는 상태 체크면 틀린 로직. (Swift 언어 스펙)
if myAge == 0 {
    //alert - 나이를 입력해주세요. 틀린로직
}


if myAge == nil {
    // alert - 나이를 입력 해주세요.
}


var myName: String? = nil


if myName == ""{
    //이름을 입력해주세요. 틀린로직임
}


if myName == nil {
    //이름을 입력한적이 없음을 의미
    //print("이름을 입력한적이 없습니다.")
}

//옵셔널은 그냥 사용할 수 없는 경우가 많이 있음.

var a: Int? = 10
var b: Int? = 20

//Int? -> Int
//String? -> String  으로 변환하는게 언랩핑

//coalesce ?? 를 사용해서 nil이면 ?? 뒤에 있는 값을 사용 한다는 의미
var sum = (a ?? 0) + (b ?? 0)

//force-unwrap -> 강제로 변환
//주의사항 (값이 없을 수 도 있다.)
var d = a! + b!

//Unwrapping
//if statements

if a != nil {
    print(a)
}

//if let
//if var


if let hasNumber = a {
    print(hasNumber)
}

if var hasNumber = a {
    hasNumber = hasNumber * 2
    print(hasNumber)
}

//guard let
//guard var

func testFunc() {
    
    guard let hasNumber = a else {
            return
    }
    print(hasNumber)
    print("end")
    
    
}

testFunc()
