import UIKit

import Foundation

func solution(_ n:Int) -> Int {
    
    
    var result = Int()
    for i in 1...n {
        
        if (1...i).filter{ i % $0 == 0}.count >= 3 {
            
            result += 1
        }
        
    }
    return result
    
}
solution(15)

