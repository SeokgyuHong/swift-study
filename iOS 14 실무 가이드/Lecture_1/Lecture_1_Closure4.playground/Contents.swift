import UIKit

var greeting = "Hello, playground"

var names = ["Chris", "Alex" ,"Ewa", "Barry", "Daniella"]

//sort

//원본을 훼손하고 싶지 않을경우 ed로 되어있는 과거형으로 정렬(새로운 배열 리턴)
names.sorted()


//4개다 같은 의미의 축약 
names.sort { $0 > $1 }
names.sort() {$0 > $1}
names.sort(by: {$0 > $1})
names.sort(by: < )


