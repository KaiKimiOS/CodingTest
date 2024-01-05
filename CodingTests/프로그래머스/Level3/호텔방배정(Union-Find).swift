//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 1/5/24.
//

import Foundation
//호텔 방 배정

func solution(_ k:Int64, _ room_number:[Int64]) -> [Int64] {
    
    var answer:[Int64] = Array(repeating:0, count: room_number.count)
    var parent: [Int64:Int64] = [:]
    func find(a:Int64) -> Int64{
        if parent[a] == nil {
            parent[a] = a + 1
            return a
        }
        parent[a] = find(a: parent[a]!)
        return parent[a]!
    }
    
    //    for i in 0..<room_number.count+1 {
    //        parent.updateValue(Int64(0), forKey: Int64(i))
    //    }
    
    for i in 0..<room_number.count {
        
        
        answer[i] = find(a: room_number[i])
    }
    
    print(answer)
    
    return answer
}

solution(10, [1,3,4,1,3,1])
