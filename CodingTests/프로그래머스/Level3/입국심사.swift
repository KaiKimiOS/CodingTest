//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 2023/12/07.
//

import Foundation

//파라메트릭 서치

func solution(_ n:Int, _ times:[Int]) -> Int64{
        
    var left = 1 //최솟값
    var right = 1000000000 * 1000000000 //최댓값
    var answer:Int64 = 0
    
    while left < right {
        var mid = (left + right) / 2
        var totalPeople = 0
        
        for i in times{
            totalPeople += mid / i
            if totalPeople > n {
                break
            }
        }
        
        if totalPeople >= n {
            right = mid
        } else {
            left = mid + 1
        }
        
    }
    
    answer = Int64(left)
    
    return answer
    
}
