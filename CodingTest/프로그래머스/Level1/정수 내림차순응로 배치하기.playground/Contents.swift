import UIKit



func solution(_ n:Int64) -> Int64 {
    
    var result = String(n).compactMap {String( $0)}.sorted(by: >).joined()
    
    
    return Int64(result)!
}

solution(118372)

func solution1(_ n:Int64) -> Int64 {
    

    
    
    
    return Int64(String(String(n).sorted(by: >)))!
}

solution1(118372)
