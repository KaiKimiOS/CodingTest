//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 1/12/24.
//

import Foundation

func solution(arr:[Int]) -> [Int]{
    var answer:[Int] = []
    var tempValue = -1
    
    for i in 0..<arr.count {
        if arr[i] != tempValue{
            answer.append(arr[i])
            tempValue = arr[i]
            
        }
        
    }
 
    return answer
}
//solution(arr:[1,1,3,3,0,1,1])
