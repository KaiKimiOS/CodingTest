//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 2/6/24.
//

import Foundation
import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
   
    var brown:Int = brown
    var yellow:Int = yellow
    
    var a:Int = -2
    var b:Int = brown + 4
    var c:Int = (-2 * brown) + (-2 * yellow)
    var discriminant = b * b - (4 * a * c)
    var answerX = (-b + Int(sqrt(Double(discriminant)))) / (2 * a)
    var answerY = (-b - Int(sqrt(Double(discriminant)))) / (2 * a)

    print(answerX)
    return [answerX,answerY]
}

//solution(10, 2)

func solution2(_ brown: Int, _ yellow: Int) -> [Int] {
    for n in (1...Int(sqrt(Double(yellow)))).reversed() {
        if (yellow/n+2) * (n+2) == (brown + yellow) {
            print(n)
            return [(yellow/n+2), n+2]
        }
    }
    return [0, 0]
}
//
//solution2(10, 2)
