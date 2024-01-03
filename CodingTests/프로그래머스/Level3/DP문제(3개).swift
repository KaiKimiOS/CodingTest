//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 1/2/24.
//

import Foundation
//가장 큰 정사각형 찾기
// DP


import Foundation


func solution1(_ board:[[Int]]) -> Int{
    
    var answer = 0
    let N = board.count
    let M = board[0].count
    var board = board
    
    
    for i in 0..<N {
        for j in 0..<M {
            if board[i][j] > 0 {
                if i > 0 && j > 0 {
                    board[i][j] += min(board[i - 1][j - 1], board[i - 1][j], board[i][j - 1])
                }
            }
            answer = max(answer, board[i][j])
        }
    }
    
    
    return answer*answer
}
//solution1([[0,1,1,1],[1,1,1,1],[1,1,1,1],[0,0,1,0]])


//2 x n 타일링
func solution2(_ n:Int) -> Int{
    var dp:[Int] = Array(repeating: 0, count: n+1)
    dp[0] = 0
    dp[1] = 1
    dp[2] = 2
    
    for i in 3...n {
        dp[i] = dp[i - 1] + dp[i - 2]
        dp[i] %= 1000000007
    }
    print(dp[n] % 1000000007)
    return dp[n] % 1000000007
    
}

//평범한 배낭
struct DP{
    
    static var N:Int = 0
    static var K:Int = 0
    static var weight:Int = 0
    static var value:Int = 0
    static var goods:[[Int]] = []
    static var dp:[[Int]] = []
    
    
    static func setting(){
        let firstReadLine = readLine()!.split(separator:" ").compactMap{Int($0)}
        N = firstReadLine[0]
        K = firstReadLine[1]
        
        for i in 0..<N {
            let st = readLine()!.split(separator:" ").compactMap{Int($0)}
            weight = st[0]
            value = st[1]
            goods.append([weight,value])

        }
        dp = Array(repeating: Array(repeating: 0, count: K+1), count: N+1)
        dp123()
    }
    
    static func dp123(){
        for i in 1...N {
            var now = goods[i-1]
            for j in 0..<K {
                dp[i][j] =  dp[i-1][j]
                if j >= now[0]{
                    dp[i][j] = max(dp[i][j], dp[i-1][j-now[0]] +  now[1])
                }
            }
        }
        print(dp[N][K])
    }

}


