import UIKit


func solution(_ num:Int) -> Int {
    var count = 0
    var result = num
    
    
    guard  result < 8000000 && result > 0 else {return  -1}
    guard result != 1 else { return 0}
    while result != 1
    {if result % 2 != 0 {
        result *= 3
        result += 1
        count += 1
    } else if result % 2 == 0 {
        result /= 2
        count += 1
    } else if result == 1 {
        break
    }
    }
    
    
    
    return count < 500 ? count : -1
}


solution(1)
