import UIKit
import Foundation


func solution(_ array:[Int]) -> [Int] {
//    var kai = array.max()!
//
//    var index = array.index(of: kai)
//    var kai1 =  array.firstIndex(of: kai)
//    var kai3 = kai1 as Int?
//    var kai4 = kai3!
//
//    var result: [Int] = [kai,index]
//
   
    
    
    return [array.max()!, array.index(of: array.max()!)!]
}

solution([1,2,8,15,3])
