import UIKit


func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {

    var range = signs.count - 1
    
    var case1 = absolutes
    for i in 0...range {
        
        if signs[i] == false {
           case1[i] = -case1[i]
        }
    }
    var result = case1.reduce(0) { $0 + $1
    }
  
    return result
}
solution([4,2,3], [true, false, true])
