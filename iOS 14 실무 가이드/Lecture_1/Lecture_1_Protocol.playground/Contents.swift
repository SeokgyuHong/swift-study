import UIKit

var greeting = "Hello, playground"

//protocol
//강제적으로 일관성을 유지할 수 있게 함. 수평적으로 기능확장
//프로토콜 내에 정의된 내용을 프로토콜을 채택한 클래스 등은 반드시 구현 해야한다.
//만약 프로토콜간의 채택이 가능하며 만약 프로토콜의 extension을 통해 구현할 경우 채택한 클래스에서 구현할 필요 없음,.
protocol ScoreProtocol{
    var homeScore: Int {get} //get은 상수 저장 프로퍼티 또는 읽기 연산 프로퍼티만 가능 read only 구현체는 let으로 지정해두면 된다. (물론 var도 되긴함)
    var awayScore: Int {get set} //get 만 되는 경우를 만들지 않겠다. get set 으로 정의를 했다는것은 연산 프로퍼티에서 get set 다 허용하거나, 저장 프로퍼티를 var로 선언 해줘야함.
    
}

protocol GameNameProtocol{
    func name() -> String
}

protocol ScorePresenter: ScoreProtocol{
    
}
extension ScorePresenter{
    func presentScore() -> String{
        homeScore.description + ":" + awayScore.description
    }
}

struct Football: ScoreProtocol, GameNameProtocol{
    func name() -> String{
        return "football"
    }
    
    var homeScore: Int
    var awayScore: Int
}

struct Baseball: ScoreProtocol{
    var homeScore: Int
    var awayScore: Int
}

struct Soccer: ScoreProtocol, ScorePresenter{
    var homeScore: Int
    var awayScore: Int
}

//이미 구현되어있으므로 바로 사용가능
let soccer = Soccer(homeScore: 4, awayScore: 5)
soccer.presentScore()

