import UIKit

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    
    var result : [[Int]] = []
    var aaa : [Int] = []
    
    
    for i in num_list {
        aaa.append(i)
        
        if aaa.count == n {
            result.append(aaa)
            aaa = []
        }
        
    }
    
    return result
    
}



solution([1,2,3,4,5,6,7,8,9], 2)
