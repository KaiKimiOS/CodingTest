import UIKit

func solution(_ arr:[Int]) -> [Int] {
    
    guard arr.count > 2 else { return [-1]}
    
    var min = arr.min()!
    var answer = arr.filter { $0 > min
    }
    
    return answer
    
}

solution([4,3,2,1])

func solution1(_ arr:[Int]) -> [Int] {
    
    var cccc : [Int] = arr
    
    var a1 = cccc.min()
    
    var a2 = cccc.index(of: a1!)
    
    cccc.remove(at: a2!)
    
    
    return cccc
}




solution1([4,3,2,1])
