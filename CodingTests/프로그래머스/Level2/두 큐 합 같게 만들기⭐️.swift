//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 3/19/24.
//

import Foundation

func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
    
    var tempQue1 = (queue1) + (queue2)
    var sum1 =  tempQue1.reduce(0) { $0 + $1 }
    var i = 0
    var j = queue1.count - 1
    var answer = 0
    var targetSum:Int64 = Int64(sum1 / 2)
    var que1Sum:Int64 = Int64(queue1.reduce(0,+))
    guard sum1 % 2 == 0 else {return -1}
    guard queue1.count != 0 || queue2.count != 0  else {return -1}
    if targetSum < queue1.max()! || targetSum < queue2.max()! {
          return -1
      }

    while answer < Int(INT32_MAX) {
        
        if targetSum == que1Sum {

            return answer
        }
        
        if que1Sum < targetSum {
            j += 1
            que1Sum += Int64(tempQue1[j])
        } else {
            que1Sum -= Int64(tempQue1[i])
            i += 1
        }
        answer += 1
        
    }
    
    print(answer)
    return answer == (queue1.count * 3) ? -1 : answer
}
//
//solution([3, 2, 7, 2],
//         [4, 6, 5, 1])
//4 10
//5 9
//6 8
//13 1 1111117 1
//12 2 111117 11
//11 3 11117 111
//10 4 1117   1111
//9 5 117 11111
//8 6 17 111111
//7 7 7 111111
//
//
////홀수 짝수 갯수같은지 아니면 -1
//모든 숫자 /2 가 바로 있으면

//
//
//import Foundation
//
//func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
//    
//    var tempQue1 = queue1
//    var tempQue2 = queue2
//    var sum1:Int =  tempQue1.reduce(0) { $0 + $1 }
//    var sum2:Int  =  tempQue2.reduce(0) { $0 + $1 }
//    var answer:Int = 0
//    var totalSum = sum1 + sum2
//    guard totalSum % 2 == 0 else {return -1}
//    
//    var primeCount1 = (tempQue1 ).filter { $0 % 2 != 0 }.count
//    var primeCount2 = (tempQue2 ).filter { $0 % 2 != 0 }.count
//    var noPrimeCount1 = (tempQue1).filter { $0 % 2 == 0 }.count
//    var noPrimeCount2 = (tempQue2).filter { $0 % 2 == 0 }.count
//    var isContain = (tempQue1+tempQue2).filter { totalSum % $0 == 0  }.filter{$0 != 1}.count
//    guard isContain > 0 else {return -1}
//    while sum1 != sum2 {
//        
//        if sum1 == sum2 {
//
//            return answer
//        }
//        
//        if sum1 > sum2 {
//            var temp = tempQue1.removeFirst()
//            tempQue2.append(temp)
//            sum1 -= temp
//            sum2 += temp
//        } else {
//            var temp = tempQue2.removeFirst()
//            tempQue1.append(temp)
//            sum2 -= temp
//            sum1 += temp
//   
//        }
//        answer += 1
//        
//    }
//    
//
//    return answer
//}
