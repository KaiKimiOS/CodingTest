//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 3/2/24.
//

import Foundation

func solution(_ s:String) -> [Int] {
    
    var s = s
    var n :Int = 0
    var zero : Int = 0

    while s != "1" {
        n += 1
        var one : Int = 0
        for i in s {
            if i == "0" {
                zero += 1
            } else {
              one += 1
            }
        }
        s = String(one,radix:2)
    }
    
    return [n,zero]
}

