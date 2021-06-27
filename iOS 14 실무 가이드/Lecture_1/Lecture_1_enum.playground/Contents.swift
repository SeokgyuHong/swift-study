import UIKit

var greeting = "Hello, playground"

//Enumerations

//enum
//타입분류

//도서관 -> 항목 -> 소설, 문제집, 패션, 만화책

//분류만 하고싶다 + 값이 필요한경우
enum BookType {
    case fiction (title: String, price: Int, year: Int)
    case comics (title: String, price: Int, year: Int)
    case workbook (title: String, price: Int, year: Int)
    // ...
}

//확장 가능 종속되는 상황에서는 Extention으로 빼둔다.
extension BookType {
    var typeName: String {
        switch self {
        case .comics:
            return "comics"
        case .fiction:
            return "fiction"
        case .workbook:
            return "workbook"
            
        
        }
    }
}

//무조건 코믹스 타입
//var bookStyle = BookType.comics

var bookStyle: BookType?

var books = [BookType]()

func saveBook(book: BookType) {

    books.append(book)

}


saveBook(book: .comics(title: "aaa", price: 5000, year: 2020))
saveBook(book: .comics(title: "bbb", price: 6000, year: 2021))
saveBook(book: .comics(title: "ccc", price: 7000, year: 2010))

saveBook(book: .workbook(title: "ddd", price: 7000, year: 2020))
saveBook(book: .fiction(title: "eee", price: 4000, year: 2020))
saveBook(book: .fiction(title: "fff", price: 8000, year: 2015))

for book in books {
    
    //1개만 찾고싶다면 if case 값이 있다면 if case let
    if case let  BookType.comics(title,_,_) = book {
        print(title, book.typeName)
        
    }

    //그렇지 않다면
//    switch book {
//    case let .comics(_, price, _):
//        print(price)
//
//    case let .fiction(title, _, _):
//        print(title)
//
//    default:
//        break
//    }
}

for book in books {
    if case BookType.comics = book{
        print( "comics")
        
    }
}
