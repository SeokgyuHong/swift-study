import UIKit

var greeting = "Hello, playground"

//프로퍼티

class MyInfo {
    //stored property (저장)
    var name = ""
    var age = 0
    
    
    //lazy stored property
    //이렇게 사이즈가 큰경우 클래스가 인스턴스화 되는 시점에 만들어버리면 오버헤드 발생 (굳이 사용하지 않는데 만들경우)
    //lazy가 붙어있을경우 클래스가 인스턴스화 됨과 동시에 메모리에 올리지 않고 사용하려고 할때 메모리에 올려 사용한다.
    lazy var myProfiles = [UIImage(named: "n"),UIImage(named: "a"),
                      UIImage(named: "c"),UIImage(named: "d"),UIImage(named: "a")]


    //computed property(계산 프로퍼티)
    //계산 프로퍼티를 사용하는 이유는 뭘까 ? 외부에 로직을 보이고 싶지 않을때 ?
    var isAdult: Bool {
        //isAdult가 어떻게 만들어지는지 써야한다. body안에있는 로직으로 isAdult의 값이 정해진다.
        //set이 없기 때문에 get은 생략가능
        if age > 19 {
            return true
        }
        return false
    }
    
    //email -> 보안 -> 암호화 된 값으로 사용한다. (항상)
    var _email = ""
    var email: String {
        get{ //가져오는것
            return _email
        }
        set{ //세팅하는것 외부에서 값을 대입하면 해당 set 영역이 수행된다. 하지만 Set할경우 저장 할 곳이 필요하기때문에
            _email = newValue.hash.description
            
        }
    }
}

let myInfo = MyInfo()

//아래 로직이 수행 되면 set부분의 코드가 수행된다.
myInfo.email = "abc@test.com"


//get 로직이 수행된다.
myInfo.email



myInfo.age = 10
myInfo.name = "kim"

//계산프로퍼티는 외부에서 수정 할 수 없다. Get Only (set이 있으면 가능)
myInfo.isAdult


//접근하는 이순간에 메모리에 올라간다
myInfo.myProfiles
print(myInfo.age)
