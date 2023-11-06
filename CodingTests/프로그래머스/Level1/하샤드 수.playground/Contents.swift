import UIKit



func solution(_ x:Int) -> Bool {
    
    
    var result = String(x).map { Int(String($0))!
    }.reduce(0) { $0 + $1
    }

  
    
    
    return x % result == 0 ? true : false
}

solution(12)
