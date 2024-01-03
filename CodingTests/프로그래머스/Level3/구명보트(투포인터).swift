//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 1/3/24.
//

import Foundation


func solution(people:[Int], limit:Int) -> Int{
    
    var answer = 0
    
    let people  =  people.sorted(by:<)
    var left = 0
    var right = people.count - 1
    
    while left <=  right {
        if (people[left] + people[right]) <= limit {
            left += 1
            
        }
        
        right -= 1 //무조건 한칸씩 줄어들기,
        answer += 1 // if 를 만족하지 않으면 혼자가야하기 때문에 answer += 1
    }
    
    print(answer)
    return answer
}

//solution(people: [70,80,50,90], limit: 100)
