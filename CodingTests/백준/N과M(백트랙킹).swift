//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 12/22/23.
//

import Foundation

//var firstReadLine = readLine()!.split(separator: " ").compactMap{Int($0)}
//var N = firstReadLine[0]
//var M = firstReadLine[1]
//var V = firstReadLine[2]
//var map:[Int] = []
//func setting() {
//    for i in 0..<M {
//        var st = readLine()!.split(separator: " ").compactMap { Int($0)  }
//        
//    }
//    
//}
//
//func dfs(v:Int) {
//    
//    
//    
//    
//}
//var alphabet:[String] = ["A","B","C","D"]
//var length:Int = 4
//
//func solution123() {
//    
//    backtrack(str: "")
//}
//
//func backtrack(str:String) {
//    if str.count == length {
//        print("\(str)")
//        return
//    }
//    for i in 0..<4 {
//        backtrack(str: str + alphabet[i])
//    }
//}
//        
//
//solution123()
//


var readline = readLine()!.split(separator:" ").compactMap{Int($0)}

var N = readline[0]
var M = readline[1]
var used:[Bool]  = Array(repeating: false, count: N+1)
var result:String = String()

func main123(){
    
    backtrack123(n: 0, str: "",number:0)
    print(result)
}

func backtrack123(n:Int, str:String, number:Int){
    
    if n == M{

        result.append(str.dropFirst() + "\n")

    }
    
    for i in (number+1)..<N+1 {
        
        if !used[i] {
            used[i] =  true
            backtrack123(n: n+1, str:"\(str)" + " " + "\(i)",number: i)
            used[i] = false
        }
    }
    
    
}


