import UIKit

var greeting = "Hello, playground"

//extension
//기능 확장
//class, enum, struct, protocol 다 사용가능

//숫자 (int) 짝수, 홀수
// 여러곳에서 사용한다면 extension을 활용해서 코드 중복을 줄인다.
//코드 중복을 줄이면 훨씬 간결하고 실수를 줄일 수 있다.
extension Int {
    var oddOrEven: String {
        if  self % 2 == 0 {
            return "짝수"
        }
        return "홀수"
    }
}

3.oddOrEven
4.oddOrEven

//UIColor
// mainColor1 = xxx
// mainColor2 = xxx
// subColor2 = xxx

//UIColor(red: <#T##CGFloat#>, green: <#T##CGFloat#>, blue: <#T##CGFloat#>, alpha: <#T##CGFloat#>)

//UIColor 는 클래스다
extension UIColor{
    class var mainColor1: UIColor{
        UIColor(red: 50/255, green: 70/255, blue: 120/255, alpha: 1)
    }
    //일반 var가 아닌 class를 붙일경우 UIColor 인스턴스를 만들 필요가 없고 바로 접근 가능. 클래스 변수느낌. (computed property라고함))
}



var button = UIButton()

button.titleLabel?.textColor = UIColor.orange
