import UIKit

var greeting = "Hello, playground"

//첫번째 글자에 포함 여부를 찾기
//마지막 글자에 포함 여부를 찾기


let names = ["apple", "air", "brown", "red", "orange", "blue", "candy", "hobby"]


let isStartText:(Character, String) -> Bool = { (find, name) in
    if name.first! == find{
        return true
    }
    return false
}

let isEndText: (Character, String) -> Bool = { (find,name) in
    if name.last! == find {
        return true
    }
    return false
    
}



func find(findChar: Character, condition:(Character,String) -> Bool ) -> [String] {
    var newNames = [String]()
    
    for name in names {
        //condition
        if condition(findChar,name)
        {
            newNames.append(name)
        }
    }
    
    return newNames
}

find(findChar: "a", condition: isStartText)
find(findChar: "y", condition: isEndText)
