import UIKit

import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    
//    var kai = numbers
//    var kai1 = 1...numbers.count-2
//
//
////    0이 1
////    1이 2
////    2가 3
//
//    if direction == "right" {
//        //kai[0] = kai[numbers.count-1]
//        for i in kai1.reversed(){
//
//            kai[i] = kai[i-1]
//            }
//        kai[0] = numbers[numbers.count-1]
//    } else if direction == "left" {
//        for i in kai1 {
//
//            kai[i] = kai[i+1]
//            }
//        kai[kai.count-1] = kai[0]
//        kai[0] = numbers[1]
//
//
//    }
    var nums = numbers
    direction == "right" ? nums.insert(nums.removeLast(), at: 0) : nums.append(nums.removeFirst()) 
    print(nums)
    return nums
    }
    

solution([1,2,3], "right")
solution([4, 455, 6, 4, -1, 45, 6], "left")
