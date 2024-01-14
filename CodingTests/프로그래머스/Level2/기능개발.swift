//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 1/13/24.
//

import Foundation
func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    
  
    var answer:[Int] = []
    
    var tempInt = 0

    for i in 0..<progresses.count {
        var value = 100 - progresses[i]
        var value2 = Int(ceil((Double(value) / Double(speeds[i]))))
        //ceil로 반올림 올려준다 2.5-> 3, 반대는 floor 반올림 내려줌 2.5 -> 2
        
        if value2 > tempInt {
            tempInt = value2
            answer.append(1)
        } else {
            
            answer[answer.count-1] += 1
        }
    }

    return answer
}
//solution([95, 90, 99, 99, 80, 99],[1, 1, 1, 1, 1, 1])
 
//[93, 30, 55]
//7  5
//3 10
//9  1
//   1
//   20
//   1
//1. 100 - 93 을 하고 - 7 을 / 1로 나누면  7
//2.                                  3
//3.                                  9
//7,3,9 만큼 for 돌아서
//1 넣어주고 7> 3보다 크면  1+ 1,
//7< 9 이면 다음
