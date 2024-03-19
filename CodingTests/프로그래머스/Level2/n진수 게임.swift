//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 3/19/24.
//

import Foundation
func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    
    var answer = ""
    var turn = 1
    var target = 0
    
    while answer.count < t {
        
        // 해당 진수 n 에 맞게 진수 변환하기
        var temp = String(target, radix: n, uppercase: true)
        
        // 하나씩 뽑아서 본인순서에 맞게 정답에 넣어줘야 한다
        for i in temp {
            
            // turn이 본인순서라면 answer에 넣어준다
            if turn == p {
                answer += String(i)
                
                //시간효율을 위해서 t와 같다면 리턴하기
                if answer.count == t {
                    return answer
                }
            }
            // turn이 총 인원수에 도달하면 다시 초기화해주기, 아니면 turn +1 하기
            turn == m ? (turn = 1) : (turn += 1)
        }
        //타겟 넘버 0부터 계속 +1 해주
        target += 1
        
    }
    
    return answer
}

