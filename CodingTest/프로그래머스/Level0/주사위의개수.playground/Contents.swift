import UIKit

func solution(_ box:[Int], _ n:Int) -> Int {
    
    var kai =  box.map { $0 / n
    }
    
   
    
    var result = kai[0] * kai[1] * kai[2]
    
    print(result)
    
    return result
}

solution([10,8,6], 3)
