import UIKit


func solution(_ n:Int) -> Int {
    
     
    
    var kai = n
    var kai1 = Int()
    
    for aa in 1...kai {
        
        if kai / aa == aa {
            
            kai1 = aa
            
            
        }
        
    }
    return kai1 * kai1 == n ? 1 : 2
}


solution(99)
solution(25)
solution(100)
