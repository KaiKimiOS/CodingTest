import UIKit

func solution(_ arr:[Int]) -> Double {
    
    var result = arr.reduce(0 , +  )
    var result1: Double = Double(result) / Double(arr.count)
    
    return result1
    
    
}

solution([1,2,3,4])
