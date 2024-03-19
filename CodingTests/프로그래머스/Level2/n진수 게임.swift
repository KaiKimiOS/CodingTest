//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 3/19/24.
//

import Foundation
func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    
    var answer = ""
    var turn = 1
    var target = 0
    
    while answer.count < t {
        
        var temp = String(target, radix: n, uppercase: true)
        
        for i in temp {
            
            if turn == p {
                answer += String(i)
                
                if answer.count == t {
                    return answer
                }
            }
            turn == m ? (turn = 1) : (turn += 1)
        }
        target += 1
        
    }
    
    return answer
}

