import UIKit
//
//func solution(_ seoul:[String]) -> String {
//
//    var aa = seoul
//
//    var result = 0
//
//    for (i,j) in aa.enumerated() {
//        if j == "Kim" { result = aa.index(before: i) + 1
//            print(result)
//        }
//    }
//
//
//    return "김서방은 \(result)에 있다"
//}
//solution(["Jane" , "Kim"])


func solution(_ seoul:[String]) -> String {
    

    return "김서방은 \(seoul.firstIndex(of: "Kim")!)에 있다"
}
solution(["Jane" , "Kim"])


