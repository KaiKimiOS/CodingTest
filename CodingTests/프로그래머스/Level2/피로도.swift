//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 2/14/24.
//

import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    
    var k:Int = k
    var dungeons:[[Int]] = dungeons
    var result:Int = 0
    var answer:Int = 0
    var answerArray:[Int] = []
    
    func dfs(k: Int, nextdungeons:[[Int]], answer: Int) {
        
        for i in 0..<nextdungeons.count {

            var answer = answer
            var tempk = k
            var tempdungeons = nextdungeons
            if tempk >= tempdungeons[i][0] {
                tempk -= tempdungeons[i][1]
                answer += 1
                answerArray.append(answer)
            } else {
                answerArray.append(answer)
                continue
            }
            tempdungeons.remove(at: i)
         
            dfs(k: tempk, nextdungeons: tempdungeons, answer: answer)
        }
    }
    dfs(k: k, nextdungeons: dungeons,answer: answer)
    
    result = answerArray.sorted(by: >).first!
    return result
}

//solution(80, [[80,20],[50,40],[30,10]])
