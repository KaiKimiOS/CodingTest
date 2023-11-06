import UIKit

func solution(_ n:Int) -> Int {
    
    var result = [Int]()
    
    if n == 0 { return  0}
    else if n > 0 {
        for i in 1...n {
            
            
            if n % i == 0 {
                result.append(i)
            }
        } }
        
        return  result.reduce(0) { $0 + $1
        }
        
}



solution(9)


func solution1(n: Int) -> Int {
    
    guard n != 0  else {return 0}
    return Array(1...n).filter {n % $0 == 0
    }.reduce(0) {$0 + $1
    }
}

solution1(n: 9)
