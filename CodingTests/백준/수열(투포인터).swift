//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 1/3/24.
//

import Foundation

struct TwoPoints{
    
    
    static var N: Int = 0
    static var K: Int = 0
    static var temperatures:[Int] = []
    static var answer = 0
    static var left = 0
    static var right = 0
    static var sum = 0

    
    static func setting() {
        var firstReadLine = readLine()!.split(separator:" ").compactMap{Int($0)}
        N = firstReadLine[0]
        K = firstReadLine[1]
        var secondReadLine = readLine()!.split(separator:" ").compactMap{Int($0)}
        temperatures.append(contentsOf: secondReadLine)
        twopoint()
    
    }
    
    static func twopoint(){
        left = 0
        right = K
        
        for i in 0..<K {
            sum += temperatures[i]
        }
        answer = sum

        while right < N {
            sum += temperatures[right]
            sum -= temperatures[left]
            right += 1
            left += 1
            answer = max(answer, sum)

        }
        
        print(answer)
    }
}

//TwoPoints.setting()
