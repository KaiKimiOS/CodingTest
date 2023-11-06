import UIKit

func solution(_ numbers:[Int]) -> Int {
    
    var range: [Int]  = [1,2,3,4,5,6,7,8,9]
    
   var result = range.filter { !numbers.contains($0)
   }.reduce(0) { $0 + $1
   }
    
    
    return result
}

solution([5,3,4,1])


func solution1(_ numbers:[Int]) -> Int {
    return 45-numbers.reduce(0, +)
}


solution([5,3,4,1])
