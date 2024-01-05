//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 1/3/24.
//

import Foundation

func solution(_ gems:[String]) -> [Int] {
    
    var map:[String:Int] = [:]

    var max = Set<String>() // 보석이 갯수를 카운트하기 위해서 Set 사용
    for i in gems {
        max.insert(i)
    }
    var left = 0
    var right = 0
    var start = 1
    var end = gems.count
    var min = gems.count
    
    //updateValue를 해서 시간초과 및 효율성 테스트 통과 X, Value가 아니라 Key로 찾아야 빠르게 찾는다!!!!
    while right < gems.count {
        if map.keys.contains(gems[right]){
            let count = map[gems[right]]!
            //map.updateValue(count+1, forKey: gems[right]) 이 경우에 value를 탐색하기 때문에 시간이 오래 걸림
            map[gems[right]] = count + 1
        }
        else {
            map[gems[right]] = 1
        }
        right += 1
        
        while map.count == max.count {
            if (right - left) < min {
                min = right - left
                start = left + 1
                end = right
            }
            let count = map[gems[left]]! - 1
            
            if count == 0 {
                map[gems[left]] = nil
            }
            else {
                map[gems[left]] = count
            }
            left += 1
        }
    }
 
    print([start,end])
    return [start,end]
}

//solution(["DIA", "RUBY", "RUBY", "DIA", "DIA", "EMERALD", "SAPPHIRE", "DIA"])



