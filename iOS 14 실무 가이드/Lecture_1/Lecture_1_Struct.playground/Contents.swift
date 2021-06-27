import UIKit

var greeting = "Hello, playground"


//구조체
//value type 값 참조가 아닌 복제가 된다.
//상속 불가
struct ImageType{
    var type = ""
}

//참조가 아닌 값 복제
var imageType1 = ImageType()
var imageType2 = imageType1
var imageType3 = imageType2

imageType1.type = "jpg"
imageType2.type = "png"
imageType3.type



class MyInfo{
    var myAge = 0
}

//레퍼런스타입 1개의 인스턴스를 다같이 참조하는것
var info1 = MyInfo()
var info2 = info1
var info3 = info2

info1.myAge = 20
info2.myAge
info3.myAge

