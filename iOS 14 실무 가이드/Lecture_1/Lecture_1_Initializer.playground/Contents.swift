import UIKit

var greeting = "Hello, playground"

//Initializer
//생성자
//init

class MyInfo{
    var name: String
    let myId: String
    
    var age = 0
    var isAdult: Bool
    
    
    //designated initializer (일반적인 initializer의 형태)
    init(name: String, id: String) {
        self.name = name
        self.myId = id
        self.isAdult = (age > 18) ? true : false
        
    }
    
//    init(){
//        self.name = ""
//        self.myId = ""
//        self.isAdult = (age > 19) ? true : false
//    }
    
//    init(id: String){
//        self.name = ""
//        self.myId = id
//        self.isAdult = (age > 19) ? true : false
//
//    }
    
    //convenience initializer // 필수조건 - 다른 init을 반드시 실행해야한다.
    //convenience initializer를 사용하면 위에 주석 처리한것처럼 동일한 Init을 두번 작성하지 않고 클래스내에 존재하는 init을 호출하면 된다.
    //로직이 훨씬 더 명확해진다.
    //init을 여러개 만들어야할 경우에 더 깔끔하게 작성할 수 있다. 중복된 로직을 간소화 시킬 수 있음.
    convenience init() {
        self.init(name: "", id: "")
    }
    
    convenience init(id: String){
        self.init(name:"", id: id)
        
    }
    
}

var myInfo1 = MyInfo(name: "kim", id: "abcd")
var myInfo2 = MyInfo()
var myInfo3 = MyInfo(id: "some id")
myInfo1.myId
myInfo1.name

myInfo2.myId

//struct 일때 init이 자동으로 생성된다. 클래스는 반드시 직접 만들어야한다.
struct MyConfig {
    var conf: String
}

var myCon = MyConfig(conf: "xxxxx")

var myInfo4 = MyInfo()
myInfo4.myId
myInfo4.name
