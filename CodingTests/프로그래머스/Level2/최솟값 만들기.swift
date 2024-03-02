//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 3/2/24.
//

import Foundation


func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var ans = 0

    for i in 0..<A.count {
        ans += (A[i] * B[i])
    }
    print(ans)
    return ans
}

solution([1,4,2], [5,4,4])
