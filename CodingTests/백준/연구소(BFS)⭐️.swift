//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 3/8/24.
//

import Foundation

var NM = readLine()!.split(separator: " ").compactMap { Int($0) }
var N = NM[0]
var M = NM[1]

var map:[[Int]] = Array(repeating: Array(repeating: 0, count: M), count: N)

var virus:[[Int]] = []
var block:[[Int]] = []
var rr = [1,-1,0,0]
var cc = [0,0,1,-1]
var result = 0

for i in 0..<N {
    var temp = readLine()!.split(separator: " ").compactMap{Int($0)}
    for j in 0..<M {
     
        map[i][j] = temp[j]
        //바이러스가 0,0에만 있는게 아니고 사이사이에 존재하기 때문에.
        if map[i][j] == 2{
            virus.append([i,j])
        }
    }
}

for i in 0..<(N * M - 2) {
    
    if map[i / M][i % M] != 0 {
        continue
    }
    block.append([i / M, i % M])
    
    for j in (i + 1)..<(N * M - 1) {
        if map[j / M][j % M] != 0 {
            continue
        }
        
        block.append([j / M, j % M])
        
        
        for k in (j + 1)..<(N * M) {
            if map[k / M][k % M] != 0 {
                continue
            }
            block.append([k / M, k % M])
            result = max(result, bfs(block: block))
            block.removeLast()
        }
        
        block.removeLast()
    }
    
    block.removeLast()
}


func bfs(block:[[Int]]) -> Int{
    var que:[[Int]] = []
    var samplemap = map
    //맵 사이사이 존재하는 바이러스들을 큐에 넣어준다.
    for i in virus {
        que.append(i)
    }
    for i in block {
        samplemap[i[0]][i[1]] = 1
    }
    
    while !que.isEmpty {
        
        var now = que.removeFirst()
        var r = now[0]
        var c = now[1]
        
        for i in 0..<4 {
            var nr = r + rr[i]
            var nc = c + cc[i]
            
            if nr < 0 || nc < 0 || nr >= N || nc >= M {
                continue
            }
            
            if samplemap[nr][nc] == 1 {
                continue
            }
            
            if samplemap[nr][nc] == 0 {
                samplemap[nr][nc] = 2
                que.append([nr,nc])
            }
        }
        
    }
    
    var cnt = 0
    for i in 0..<N {
        for j in 0..<M {
            if samplemap[i][j] == 0 {
                cnt += 1
            }
        }
    }
    return cnt
}
print(result)




//import Foundation
//
//struct Node {
//    var r: Int
//    var c: Int
//}
//
//var rx = [-1, 1, 0, 0]
//var ry = [0, 0, -1, 1]
//
//var map: [[Int]]
//var N: Int
//var M: Int
//var virus = ArrayDeque<Node>()
//
//func main() {
//    let input = readLine()!.split(separator: " ").map { Int($0)! }
//    N = input[0]
//    M = input[1]
//
//    map = [[Int]](repeating: [Int](), count: N)
//
//    for i in 0..<N {
//        let row = readLine()!.split(separator: " ").map { Int($0)! }
//        map[i] = row
//        for j in 0..<M {
//            if map[i][j] == 2 {
//                virus.appendLast(Node(r: i, c: j))
//            }
//        }
//    }
//
//    var block = ArrayDeque<Node>()
//    var answer = 0
//
//    for i in 0..<(N * M - 2) {
//        if map[i / M][i % M] != 0 {
//            continue
//        }
//
//        block.appendLast(Node(r: i / M, c: i % M))
//
//        for j in (i + 1)..<(N * M - 1) {
//            if map[j / M][j % M] != 0 {
//                continue
//            }
//
//            block.appendLast(Node(r: j / M, c: j % M))
//
//            for k in (j + 1)..<(N * M) {
//                if map[k / M][k % M] != 0 {
//                    continue
//                }
//
//                block.appendLast(Node(r: k / M, c: k % M))
//                answer = max(answer, bfs(block: block))
//                block.pollLast()
//            }
//
//            block.pollLast()
//        }
//
//        block.pollLast()
//    }
//
//    print(answer)
//}
//
//func bfs(block: ArrayDeque<Node>) -> Int {
//    var map2 = map
//
//    for node in block {
//        map2[node.r][node.c] = 1
//    }
//
//    var queue = ArrayDeque<Node>()
//    for node in virus {
//        queue.appendLast(node)
//    }
//
//    while !queue.isEmpty() {
//        let now = queue.pollFirst()
//
//        for i in 0..<4 {
//            let nr = now.r + ry[i]
//            let nc = now.c + rx[i]
//
//            if nr < 0 || nc < 0 || nr >= N || nc >= M {
//                continue
//            }
//
//            if map2[nr][nc] == 1 {
//                continue
//            }
//
//            if map2[nr][nc] == 0 {
//                map2[nr][nc] = 2
//                queue.appendLast(Node(r: nr, c: nc))
//            }
//        }
//    }
//
//    var cnt = 0
//
//    for i in 0..<N {
//        for j in 0..<M {
//            if map2[i][j] == 0 {
//                cnt += 1
//            }
//        }
//    }
//
//    return cnt
//}
//
//main()
//
