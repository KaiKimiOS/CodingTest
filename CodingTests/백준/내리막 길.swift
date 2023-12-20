//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 12/20/23.
//

import Foundation

struct DFS {
    
    static var row:Int = 0
    static var column:Int = 0
    static var rx = [0,0,1,-1]
    static var ry = [1,-1,0,0]
    static var map:[[Int]] = []
    static var cnt:[[Int]] = []
  

   static func setNumbers() {
        let firstReadLine = readLine()!.split(separator: " ").compactMap{Int($0)}
        row = firstReadLine[0]
        column = firstReadLine[1]
        map = Array(repeating: Array(repeating: 0, count: column), count: row)
        cnt = Array(repeating: Array(repeating: -1, count: column), count: row)

        for i in 0..<row {
            let st = readLine()!.split(separator: " ").compactMap{Int($0)}
            for j in 0..<column{
                map[i][j] = st[j]
            }
        }
       
       
       cnt[row-1][column-1] = 1 //맨 마지막 장소 1로 초기설정 해줘야함, 안하면 마지막 도착지점 도착했어도 count 그대로임.
       dfs(r: 0, c: 0)
       print(cnt[0][0])
    }
        
    static func dfs(r:Int, c: Int) -> Int {
        
        var r = r
        var c = c
        
        if cnt[r][c] >= 0{
            return cnt[r][c]
        }
        
        cnt[r][c] = 0
        
        for i in 0..<4 {
            let nr = r + ry[i]
            let nc = c + rx[i]
            
            if nr < 0 || nc < 0 || nr >= row || nc >= column {
                continue
            }
            
            if map[r][c] > map[nr][nc] { // 문제에서 요구하는게 map[r][c] > map[nr][nc] 큰곳에서 작은곳으로 가야하기 때문에
                cnt[r][c] += dfs(r: nr, c: nc)
            }
        }
        
        return cnt[r][c]
    }

}


DFS.setNumbers()

//다시 해봐야할듯
