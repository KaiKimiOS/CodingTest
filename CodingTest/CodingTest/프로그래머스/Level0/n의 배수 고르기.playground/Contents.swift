import UIKit


func solution(_ n:Int, _ numlist:[Int]) -> [Int] {
    
    var result: [Int] = []
    
    for i in numlist {
        
        if i % n == 0  {
            
            result.append(i)
            continue
        } else {continue}
        
    }
    
    
    return result
}

solution(3, [4, 5, 6, 7, 8, 9, 10, 11, 12])
