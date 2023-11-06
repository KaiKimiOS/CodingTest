import UIKit
func solution(_ n:Int) -> [Int] {
    
//    var kai = 1...n
//    var result: [Int] = []
//    for i in kai {
//
//        if n % i == 0 {
//            result.append(i)
//            continue
//        }
//
//    }
//
//
//    return result
    
    return (1...n).filter {
        
        n % $0 == 0
        
    }
}


solution(15)
