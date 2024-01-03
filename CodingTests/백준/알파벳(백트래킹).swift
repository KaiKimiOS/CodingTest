//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 12/26/23.
//

import Foundation
struct Main {
    static var abc:Int = Int(Character("Z").asciiValue!)
    static var bc:Int = Int(Character("A").asciiValue!)
    static let rx = [0,0,1,-1]
    static let ry = [1,-1,0,0]
    static var answer = 0
    static var R = 0
    static var C = 0
    static var map:[[Character]] = []
    static var usedBool:[Bool] = []

    static func start() {
        
        var firstReadLine = readLine()!.split(separator:" ").compactMap{Int($0)}
        R = firstReadLine[0]
        C = firstReadLine[1]
        map = Array(repeating: Array(repeating: " ", count: C) , count: R)
        usedBool =  Array(repeating: false, count: abc - bc + 1)
        for i in 0..<R {
            let st = readLine()!.compactMap { $0 }
            for j in 0..<C {
                map[i][j] = st[j]
            }
        }
        
        usedBool[Int(map[0][0].asciiValue!) - bc] = true
        backTracking(r: 0, c: 0, count: 1)
        print(answer)
    }
    
    static func backTracking(r:Int, c:Int, count:Int) {
        
        answer  = max(answer, count)

        for i in 0..<4 {
            var nr = r + rx[i]
            var nc = c + ry[i]
            
            if nr < 0 || nc < 0 || nr >= R || nc >=  C {
                continue
            }
            if usedBool[Int(map[nr][nc].asciiValue!) - bc] {
                continue
            }
            
            usedBool[Int(map[nr][nc].asciiValue!) - bc] = true
            
            backTracking(r: nr, c: nc, count: count+1)
            
            usedBool[Int(map[nr][nc].asciiValue!) - bc] = false
        }
        
        
    }
    
}


