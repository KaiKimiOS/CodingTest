//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 2023/12/08.
//

import Foundation

var array = [[1,1],[2,3], [2,4], [5,2], [5,1]]
var number = 5
var arrayList:[[Int]] = Array(repeating: [], count: number+1)


for i in array {
    arrayList[i[0]].append(i[1])
}

for i in arrayList[5] {
    print(i)
}







func solution(maps: [[Int]]) -> Int{
    
    var map = maps
    var n = map[0].count
    var m = map.count
    var que:[(Int,Int)] = []
    let rx:[Int] = [1,-1,0,0]
    let ry:[Int] = [0,0,1,-1]
    var visited:[[Bool]] = Array(repeating: Array(repeating: false, count: n), count: m)
    print(visited)
    visited[0][0] = true
    que.append((0,0))
    map[0][0] = 1
    
    
    while !que.isEmpty {
        let now = que.removeFirst()
        let x = now.0
        let y = now.1
        for i in 0...3 {
            
            let dx = x + rx[i] // 0
            let dy = y + ry[i] // 1
            if dx < 0 || dy < 0 || dx > maps[0].count || dy > maps.count {
                continue
            }
            if map[dx][dy] == 0 {
               continue
            }

            if !visited[dx][dy] {
                visited[dx][dy] = true
                que.append((dx,dy))
                map[dx][dy] = map[x][y] + 1
            }
            
            
        }
        
    }
    return map[map.endIndex - 1][map.endIndex - 1] == 1 ? -1 : map[map.endIndex - 1][map.endIndex - 1]
}

solution(maps: [[1,0,1,1,1],[1,0,1,0,1],[1,0,1,1,1],[1,1,1,0,1],[0,0,0,0,1]])
