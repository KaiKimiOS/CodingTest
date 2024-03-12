//
//  Main.swift
//  CodingTests
//
//  Created by kaikim on 3/12/24.
//

import Foundation

var NMV:[Int] = readLine()!.split(separator: " ").compactMap { Int($0) }

var N:Int = NMV[0]
var M:Int = NMV[1]
var V:Int = NMV[2]
var map:[[Int]] = Array(repeating: [], count: N+1)
var visited1:[Bool] = Array(repeating: false, count: N+1)
var visited2:[Bool] = Array(repeating: false, count: N+1)
var answer = ""

for _ in 0..<M {
    let relation = readLine()!.split(separator: " ").map{Int(String($0))!}
    let a = relation[0]
    let b = relation[1]
    map[a].append(b)
    map[b].append(a)
    map[a].sort()
    map[b].sort()
}


func dfs(n:Int) {
    if visited1[n] {
        return
    }
    visited1[n] =  true
    answer += "\(n) "
 
    for i in map[n] {
        dfs(n: i)
    }
    
}

func bfs(n:Int) {
    var que = map[n]
    visited2[n] = true
    answer += "\(n) "
    
    while !que.isEmpty {
        var now = que.removeFirst()
        if !visited2[now] {
            visited2[now] = true
            answer += "\(now) "
            for i in map[now] {
                if !visited2[i] {
                    que.append(i)
                }
            }
        }
        
    }
    
}
dfs(n: V)
print(answer)
answer = ""
bfs(n: V)
print(answer)
