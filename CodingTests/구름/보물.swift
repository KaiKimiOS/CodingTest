//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 9/27/24.
//

import Foundation


func 보물() {
    var N = Int(readLine()!)!
    var arr1 = readLine()!.split(separator:" ").compactMap{Int(String($0))}
    var arr2 = readLine()!.split(separator:" ").compactMap{Int(String($0))}
    
    var answer = 0
    
    var sortedarr1 = arr1.sorted(by:>)
    var sortedarr2 = arr2.sorted(by:<)
    
    for i in 0..<N {
        
        answer += (sortedarr1[i] * sortedarr2[i])
        
    }
    
    print(answer)
}
