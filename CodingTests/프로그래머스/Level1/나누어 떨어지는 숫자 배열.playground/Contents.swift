import UIKit

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    
    var result =  arr.filter{ $0 % divisor == 0}.sorted(by: <)
    
    return !result.isEmpty ? result : [-1]
}

solution([5,7,9,10], 11)
