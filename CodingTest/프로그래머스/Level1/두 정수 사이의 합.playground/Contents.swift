import UIKit
func solution(_ a:Int, _ b:Int) -> Int64 {
    
    guard a != b else {return Int64(a)}
    var case1:  [Int]  = [a, b]
   var case2 =  case1.sorted(by: <)
    case2[0]
    case2[1]
    var result = Int()
    for i in case2[0]...case2[1] {
        
        result += i
    }
    

    
    
    
    return Int64(result)
}

solution(5, 3)


//Array(a > b ? b...a : a...b).reduce(0, +)
