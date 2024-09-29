//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 9/28/24.
//

import Foundation

var input = readLine()!.split(separator: " ").compactMap { Int(String($0))}

var N =  input[0]
var M = input[1]

var inputArr = readLine()!.split(separator: " ").compactMap { Int(String($0))}

var positive:[Int] = []
var negative:[Int] = []

var answer:[Int] = []

for i in inputArr {
    i > 0 ? positive.append(i) : negative.append(-i)
}


var index1 = 0
var index2 = 0
positive.sort(by: >)
negative.sort(by: >)


for i in stride(from: positive[0], to: positive.last!, by: M) {
    print("g")
    print(i)
}

//for (i,j) in positive.enumerated() {
//    if index1 == i {
//        index1 += M
//        answer.append(j)
//    }
//}
//
//
//for (i,j) in negative.enumerated() {
//    if index2 == i {
//        index2 += M
//        answer.append(j)
//    }
//}
//
//print((2 * answer.reduce(0, +)) - answer.max()!)

