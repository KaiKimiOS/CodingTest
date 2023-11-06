import UIKit

func solution(_ numbers:[Int], _ k:Int) -> Int {
    
    var case1 = k - 1
    var result = 1
    for _ in 1...case1 {

        
        result += 2
        if result > numbers.count {
            result -= numbers.count
        }
    }


    
    
    return result
}

solution([1,2,3,4], 3)


