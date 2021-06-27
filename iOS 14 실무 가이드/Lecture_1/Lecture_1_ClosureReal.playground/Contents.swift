import UIKit

var greeting = "Hello, playground"

//Closure 실전

//조건 -> 찾는다 -> 특정한 글자가 포함된 것을 찾는다.

//조건 -> 찾는다 -> 입력한 글자로 시작하는 첫글자를 찾는다.

let names = ["apple", "air", "brown", "red", "orange", "blue", "candy", "hobby"]

let containsSomText: (String, String) -> Bool = { name, find in
    if name.contains(find) {
        return true
    }
    return false
    
    
}

let isStartSomeText: (String,String) -> Bool = {name, find in
    if name.first?.description == find {
        return true
    }
    return false
}

func find(findString: String, condition: (String,String) -> Bool ) -> Array<String> {
    var newNames = Array<String>()
    for name in names{
        if condition(name, findString){
            newNames.append(name)
        }
    }
    return newNames
    
}
//기존 로직을 손상 시키지 않고 조건에 따라 클로저를 생성해서 find 함수로 전달해 내부에서 사용 할 수 있게한다.
find(findString: "a", condition: containsSomText)
find(findString: "a", condition: isStartSomeText)

func someFind(find: String) -> Array<String> {
    var newNames = Array<String>()
    
    for name in names{
        if name.contains(find) {
            newNames.append(name)
        }
        
    }
    return newNames
}

someFind(find: "y")
