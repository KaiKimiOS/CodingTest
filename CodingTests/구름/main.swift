//
//  file.swift
//  CodingTests
//
//  Created by kaikim on 6/12/24.
//

import Foundation

let inpuT = readLine()!.split(separator:" ").compactMap{Int($0)!}

var target:[Int:Int] = [:]
var result = 0
for i in 0..<inpuT[1] {
    
    result += 1
    let input = Int(readLine()!)!
    if target[input] != 0 { continue }
    target[input, default: 0] = 1
    
    for i in 1...inpuT[0]{
        if target[i] == nil {
            break
        }
        
    }
  
}
print(result)



//readline은 처음 character로 받아온다 String이 아님...
//이렇게 compactmap 해줘야함
//let input = readLine()!.compactMap { String($0)}
//joined() - > String 타입만 가능
//let result = String(input2, radix:8)
