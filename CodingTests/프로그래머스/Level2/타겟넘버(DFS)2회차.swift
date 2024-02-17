//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 2/17/24.
//

import Foundation



func solution222(_ numbers:[Int], _ target:Int) -> Int {
    
    var count:Int = 0

    
    func dfs(index:Int, result:Int) {
        if numbers.count == index {
            if result == target {
                count += 1
            }
            return
        }
        
        dfs(index: index + 1, result: result + numbers[index])
        dfs(index: index + 1, result: result - numbers[index])
        
    }
    
    dfs(index: 0, result: 0)

    return count
}

//solution222([4, 1, 2, 1], 4)
