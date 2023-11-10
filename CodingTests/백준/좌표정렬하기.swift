//
//  좌표정렬하기.swift
//  CodingTests
//
//  Created by kaikim on 2023/11/10.
//

import Foundation

var N = Int(readLine()!)!
var array: [[Int]] = []

for i in 0..<N {
    
    var temp = readLine()!.split(separator: " ").compactMap { Int($0)!
    }
    array.append(temp)
}

array.sort { $0[1] < $1[1] }
array.sort { $0[0] < $1[0] }

//sort가 Stable 하기때문에, 뒤에 먼저 정렬하고 앞에 정렬하면, 뒤에 정렬은 stable 하게 그대로 있게됨.

for i in 0..<array.count {
    print("\(array[i][0]) \(array[i][1])")
}
