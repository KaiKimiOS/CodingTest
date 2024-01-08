//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 1/8/24.
//

import Foundation

func solution(nums:[Int]) -> Int{
    var num = nums.count / 2
    var setArray:Set<Int> = []
    for i in nums {
        setArray.insert(i)
    }
   
    
    return setArray.count > num ? num : setArray.count
}

