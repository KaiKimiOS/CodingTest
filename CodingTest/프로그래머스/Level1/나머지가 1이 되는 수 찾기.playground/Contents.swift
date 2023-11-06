import UIKit
func solution(_ n:Int) -> Int {
    
    var result = Int()
    
    for i in 1...n {
        
        if n % i == 1 {
            
            result = i //최솟값을 구하기 때문에 break로 멈추기
            break
        } }
    
    
    
    return result
    
}

solution(12)
