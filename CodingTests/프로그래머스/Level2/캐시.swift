//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 2023/11/08.
//

import Foundation

func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    
    var array: [String] = []
    
    var result: Int = 0
    
    guard cacheSize != 0 else { return cities.count * 5 }
    
    for i in cities { // O(N) N = 100,000
        let loweredCities = i.lowercased() // O(N) N = 20
        
        if array.contains(loweredCities) { // O (N * M) 30 * 20 * 100,000
            result += 1
            let index = array.firstIndex(of: loweredCities)!
            array.remove(at: index)
            array.append(loweredCities)
            
        } else {
            result += 5
            array.append(loweredCities)
            if array.count > cacheSize {
                array.removeFirst()
            }
            
        }
    }
    return result

}

print(solution(5, ["Jeju", "Pangyo", "Seoul", "NewYork", "LA", "SanFrancisco", "Seoul", "Rome", "Paris", "Jeju", "NewYork", "Rome"] ))
