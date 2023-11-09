//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 2023/11/09.
//

import Foundation

func solution(_ s:String) -> Bool {
        
    var stack: [Character] = []
    
    guard s.first != ")" else { return false }
    
    for i in s { //O(N)
        
        if i == "("  {
            stack.append(i)
        } else {
            if stack.count == 0  {
                return false
            }
            stack.popLast()
        }
        
    }
    
    //stack.isEmpty보다 stack.count == 0 사용하면 더 효율적
    return stack.isEmpty
}
