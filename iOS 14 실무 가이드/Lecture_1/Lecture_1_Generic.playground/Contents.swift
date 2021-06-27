import UIKit

var greeting = "Hello, playground"

//generic <Type> 을 선언 사용할 타입을 외부에서 주입
//로직 - 반복, 타입 여러가지

//stack

//struct 에서는 value 타입 이기 때문에 내부에서 값을 기본적으로 참조해서 바꿀 수없음. 가능하게 하기 위해서 mutating 사용

//제한을 두는법 where
struct MyStack<T> where T: Numeric{
    var items = [T]()
    
    mutating func push(item: T){
        items.append(item)
    }
    
    mutating func pop() -> T? {
        if items.isEmpty{
            return nil
        }
        return items.removeLast()
    }
}


var myStack = MyStack<Int>()

myStack.push(item: 4)
myStack.push(item: 5)
myStack.push(item: 6)

myStack.pop()
myStack.pop()
myStack.pop()
myStack.pop()

