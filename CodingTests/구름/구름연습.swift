//
//  file.swift
//  CodingTests
//
//  Created by kaikim on 6/12/24.
//
import Foundation



//let input = readLine()!.split(separator:" ").compactMap{Int($0)!}
//
//enum order {
//
//    case push
//    case pop
//}
//
//var aaaa:[Int] = []
//func que(order:order,n:Int = 0) {
//
//    switch order {
//    case .pop :
//        if aaaa.count == 0  {
//            print("Underflow")
//        } else {
//            var value =  aaaa.removeFirst()
//            print(value)
//        }
//    case .push:
//        if aaaa.count == input[1] {
//            print("Overflow")
//        } else {
//            aaaa.append(n)
//
//        }
//    }
//}
//
//for i in 0..<input[0] {
//    var input1 =  readLine()!.split(separator:" ").compactMap{String($0)}
//    print(aaaa)
//    if input1.count == 2 {
//        if let abc = Int(input1[1]) {
//           que(order:.push, n:abc)
//
//        }
//    } else {
//        que(order:.pop)
//    }
//
//}
//for _ in 0..<inpuT[1] {
//
//    if target.keys.count == inpuT[0] {
//        resultBool =  true
//        break
//    }
//    result += 1
//
//    if target[input] == 1 {
//        continue
//    }
//    target[input, default: 0] = 1
//}
//
//resultBool ? print(result) : print("-1")


//readline은 처음 character로 받아온다 String이 아님...
//이렇게 compactmap 해줘야함r
//let input = readLine()!.compactMap { String($0)}
//joined() - > String 타입만 가능
//let result = String(input2, radix:8)

//
//  Main.swift
//  CodingTests
//
//  Created by kaikim on 3/12/24.
//

import Foundation
import Foundation

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


//DP.setting()
//print(DP.dp)

var asdf = Array(repeating: Array(repeating: 0, count: 6), count: 7)

//for i in 1...30 {
//    
//    for j in 0...<7-i {
//        asdf[i][j] = 0
//    }
//    
//    
//    
//    
//}
