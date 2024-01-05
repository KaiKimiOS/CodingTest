//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 1/4/24.
//

import Foundation

var abc = 10

var bc = 9
var qqq = 110
var qwer = 111
var pp = 1
var rere = min(abc, bc, qqq,qwer, pp)

var aac = pp << 3 //shift 연산 -> 비트를 옆으로 넘긴다
// 00000...00001 1
// 00000...00010 2  -> pp << 1
// 00000...00100 4  -> pp << 2
// 00000...01000 8  -> pp << 3
//pp << 1 곱하기, pp >> 3 나누기

//print(aac)

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    
    var parent:[Int] = Array(repeating: 0 , count: n)
    
    for i in 0..<n {
        parent[i] = i
    }
    
    func union(a:Int,b:Int) {
        let x = find(a: a)
        let y = find(a: b)
        parent[x] = y
    }
    
    func find(a:Int) -> Int {
        if parent[a] == a {
            return a
        }
        
        parent[a] = find(a: parent[a])
        return parent[a]
    }
    

    for i in 0..<n {
        for j in 0..<n {
            if computers[i][j] == 1 {
                union(a: i, b: j)
            }
        }
    }
    
    var result:Set<Int> = []
    for i in 0..<n {
        result.insert(find(a: i))
    }

    print(result.count)
    return result.count
}

//solution(3,[[1, 1, 0], [1, 1, 1], [0, 1, 1]])
