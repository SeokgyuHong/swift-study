import UIKit

var greeting = "Hello, playground"

//Deinitilization

//해제

var a: Int? = 10
a = nil

class Game {
    var score = 0
    var name = ""
    var round: Round?
    
    init(){
        print("game init")
        
    }
    deinit{
        //해제했을때 어딘가에 로그를 보내거나, 해제가 완료됐는지 확인 하기 위해
        print("game deinit")
    }
    
}

//라운드는 게임에 종속적이다.
class Round {
    //상호참조
    weak var gameInfo: Game? //weak란 원본 참조한 정보가 없어지면 함께 없어지겠다. 즉 약한 참조관계를 설정 참조한 원본이 없어지면 함께 사라지겠다.
    
    var lastRound = 10
    var roundTime = 20
    
    deinit{
        //해제했을때 어딘가에 로그를 보내거나, 해제가 완료됐는지 확인 하기 위해
        print("round deinit")
    }
}


//retain count가 0일때 메모리가 해제 되는데 아래의 경우는 count가 2가된다.
var game: Game? = Game()

var round: Round? = Round()

//상호 참조가 될경우 한쪽에서 nil로 해제 하더라도 메모리 해제가 안된다. (가끔 생김)
round?.gameInfo = game
game?.round = round

game = nil
round = nil
//상호참조일 경우 해제가 안되는데 티가안난다. 티가 안나더라도 체크할 줄 알아야함
//변수 자체는 사라지는데 메모리상에 존재하는 인스턴스는 그대로 유지된다.


