import UIKit

var greeting = "Hello, playground"


//HIgher order function

//고차함수

let names = ["kim","lee", "min", "john"]

//map -> 매핑하는것 원본함수를 해치지 않고 새로운 값을 반환함.
//let names2 = names.map { name in
//    name + "님"
//}

let names2 = names.map { $0 + "님"}
names2

let names3 = names.map { name in
    name.count
}

let names4 = names.map { name in
    name.count > 3
}

// filter -> 필요한것만 추출
let filterName = names.filter { name in
    name.count > 3
}

filterName

//reduce -> 하나로 뭉친다. 통합한다. + - 등

let sumName = names.reduce("") { first, second in
    first + second
}


let numberArr = [1,2,3,4,5, nil, 6, nil, 8]
let sumNum = numberArr.reduce(0) { first, second in
    first + (second ?? 0)
}

//compactMaps == nil을 없애준다.
let numbers = numberArr.compactMap { num in
    return num
}
numbers

//flatmap 1개의 뎁스로 나열함 
let numbers2 = [[1,2,3],[4,5,6]]

numbers2.flatMap { num in
    num
}
