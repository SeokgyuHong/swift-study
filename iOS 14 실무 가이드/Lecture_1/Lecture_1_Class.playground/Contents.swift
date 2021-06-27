import UIKit

var greeting = "Hello, playground"


//Class
//초기값을 무조건 넣어야 하지만 init을 구현하면 넣지 않아도 된다, 외부에서 생성과 동시에 값 초기화 가능
class MyInfo{
    
    
    init(gender: GenderType) {
        self.genderType = gender
    }

    //내부에서만 사용할 수 있게 하는것
    private var genderType: GenderType = .male
    
    
    enum GenderType{
        case male
        case female
    }
    

    var name = ""
    var age = 0
    
    func isAdult() -> Bool {
        if age > 19 {
            return true
        }
        return false

    }
}


//클래스 안에 Enum 선언 시 클래스 만들때, 클래스 내에서만 사용 가능하다.
//참조 타입 (레퍼런스 타입)
var myInfo = MyInfo(gender: .female)

myInfo.age = 20

var myInfo2 = myInfo

myInfo2.age


//상속
class GameInfo {

    var homeScore = 0
    var awayScore = 0
    func presentScore() -> String {
        return homeScore.description + ":" + awayScore.description
    }

}

class Soccer: GameInfo {
    var time = 0
}

class Baseball: GameInfo {
    var round = 0
    
    override func presentScore() -> String {
        return homeScore.description + " 대 " + awayScore.description
    }
}

class Football: GameInfo {

}

let soccer = Soccer()

soccer.awayScore = 1
soccer.homeScore = 2
soccer.time = 45
soccer.presentScore()

let baseball = Baseball()
baseball.homeScore = 20
baseball.presentScore()
baseball.round = 2


var info:GameInfo = Baseball()

info.homeScore = 10
info.awayScore = 20
info.presentScore()

info
