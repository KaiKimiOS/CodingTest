//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 2/20/24.
//
import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    
    var result:Int = 0
    
    var visited:[Bool] = Array(repeating:false, count:words.count)
    
    guard words.contains(target) else {return 0}
    
    func dfs(index:Int) -> Int {
        
        var tempResult = 0
        
        if visited[words.count-1] {
            result = 0
            return result
        }
        
        for i in 0...index {
            if visited[i]{
                continue
            }
            
            visited[i] = true
            result += 1
            
            for i in words[index]{
                if target.contains(i) {
                    tempResult += 1
                }
            }
        }
        
        if tempResult == (target.count - 1){
            return result
        } else {
            dfs(index: index + 1)
        }
        return 0
    }
    
    dfs(index:0)

    return words.contains(begin) ? result :(result+1)
}
//solution("hit", "hot", ["hit", "hot", "lot"])
