import UIKit


func solution(_ n:Int) -> Int {
    
    var result = 1
    var kai = Int()
        for i in 1...10 {
        
            
            result *= i
            
            if result == n {
                
                kai = i
                break
                
            } else if result > n {
                kai = i - 1
                break
            }
            
                
    }
    
    return kai
}

solution(54)
