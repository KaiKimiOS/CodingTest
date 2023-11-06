import UIKit


func solution(_ array:[Int]) -> Int {
    
    
    var result = array.map { String($0)
    }
    var result2 = result.joined()
    var final = 0
    for i in result2 {
        
        if i == "7" {
            
            final += 1
        } else { continue}
    }
    
    
    
    return final
}

solution([7,77,71])
