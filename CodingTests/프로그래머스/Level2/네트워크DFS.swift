//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 2/19/24.
//

import Foundation


func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    
    var visited:[Bool] = Array(repeating:false, count: n)
    var count:Int = 0
    
    
    for i in 0..<n {
        
        if !visited[i] {
            dfs(number: i)
            count += 1
        }
    }
    
    func dfs(number:Int) {
        if visited[number] {
            return
        }
        visited[number] = true
        
        for (i,j) in computers[number].enumerated() {
            
            if i == number {
                continue
            }
            if j == 1 {
                
              dfs(number: i)
            }
        }
    }

     
    return count
}

