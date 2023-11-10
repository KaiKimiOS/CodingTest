//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 2023/11/10.
//

import Foundation

var N = Int(readLine()!)!
var array: [Int] = []

for i in 0..<N {
    
    var temp = Int(readLine()!)!
    array.append(temp)
    
}
array.sort()


for i in 0..<array.count {
    print(array[i])
}
