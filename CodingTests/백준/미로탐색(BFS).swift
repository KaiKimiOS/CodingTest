//
//  미로탐색(BFS).swift
//  CodingTests
//
//  Created by kaikim on 3/11/24.
//

import Foundation

var NandM = readLine()!.split(separator: " ").compactMap { Int($0)}
var N:Int = NandM[0]
var M = NandM[1]
var map:[[Int]] = Array(repeating: Array(repeating: 0, count: M), count: N)
var distance:[[Int]] = Array(repeating: Array(repeating: 1, count: M), count: N)
var visited:[[Bool]] = Array(repeating: Array(repeating: false, count: M), count: N)
var que:[[Int]] = []
var r4 = [1,-1,0,0]
var c4 = [0,0, 1,-1]

que.append([0,0])
visited[0][0] = true

for i in 0..<N {
    var temp = readLine()!.compactMap { Int(String($0))  }
    for j in 0..<M {
        map[i][j] = temp[j]
    }
}


while !que.isEmpty {
    
    var now = que.removeFirst()
    var rr = now[0]
    var cc = now[1]
    
    for i in 0..<4 {
        
        var nr = rr + r4[i]
        var nc = cc + c4[i]
        
        if nr < 0 || nc < 0 || nr >= N || nc >= M {
            continue
        }
        
        if map[nr][nc] == 0 {
            continue
        }
        
        if !visited[nr][nc] {
            que.append([nr,nc])
            visited[nr][nc] = true
            distance[nr][nc] = distance[rr][cc] + 1
        }
    }
}
print(distance[N-1][M-1])
