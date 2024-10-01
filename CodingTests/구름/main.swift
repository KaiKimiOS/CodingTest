//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 9/28/24.
//

//import Foundation
//
//var input = readLine()!.split(separator: " ").compactMap { Int(String($0))}
//
//var N =  input[0]
//var M = input[1]
//
//var inputArr = readLine()!.split(separator: " ").compactMap { Int(String($0))}
//
//var positive:[Int] = []
//var negative:[Int] = []
//
//var answer:[Int] = []
//
//for i in inputArr {
//    i > 0 ? positive.append(i) : negative.append(-i)
//}
//
//
//var index1 = 0
//var index2 = 0
//positive.sort(by: >)
//negative.sort(by: >)
//
//
//for i in stride(from: positive[0], to: positive.last!, by: M) {
//    print("g")
//    print(i)
//}
import Foundation

//var N:Int = Int(readLine()!)!
//
//var dp:[Int] = Array(repeating: 0, count: N + 1)
//
//dp[1] = 0
//
//for i in 2...N {
//    
//    dp[i] = dp[i-1] + 1
//     
//    if i % 2 == 0 {
//        dp[i] = min(dp[i/2] + 1, dp[i])
//    }
//    
//    if i % 3 == 0 {
//        dp[i] = min(dp[i/3] + 1, dp[i])
//    }
//}

//print(dp[N])

//1로 만들기 2
//var N = Int(readLine()!)!
//
//var dp = Array(repeating:0, count: N + 1)
//var history = Array(repeating:0, count: N + 1)
//
//
//if N > 1 {
//for i in 2...N {
//    
//    dp[i] = dp[i-1] + 1
//    history[i] = i - 1
// 
//    if i % 2 == 0 && dp[i] > dp[i/2] + 1{
//        dp[i] = dp[i/2] + 1
//        history[i] = i / 2
//    }
//    if i % 3 == 0 && dp[i] > dp[i/3] + 1 {
//        dp[i] = dp[i/3] + 1
//        history[i] = i / 3
//       
//    }
//}
//}
//
//print(dp[N])
//
//var path:[Int] = []
//while N != 0{
//    path.append(N)
//    N = history[N]
//    
//}
//
//print(path.map{String($0)}.joined(separator:" "))


//----------------------------
var N = Int(readLine()!)!

var dp = Array(repeating: -1, count: N + 1)

dp[0] = 0
dp[1] = 1
dp[2] = 1
var answer = Array(repeating: 0, count: N + 1)
var count = 0

for i in 3..<N+1 {
    count += 1
    if dp[i] != -1 {
        continue
    }
    dp[i] = dp[i-1] + dp[i-2]
}

print(count)
print(dp[N])
