//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 3/11/24.
//

import Foundation
func solution(_ msg:String) -> [Int] {

    var dict:[String:Int] = [:]
    var answer:[Int] = []
    var msgArray = msg.map { String($0) }
    var count = 0
    var w = ""
    for i in 1...26 {
        dict.updateValue(i, forKey: String(UnicodeScalar(i + 64)!))
    }
    while count < msgArray.count {
        let c = msgArray[count]
        let tempwc = w + c
        let checkingDick = dict.contains { $0.key == tempwc }
        if !checkingDick {
            dict[tempwc] = dict.count + 1
            answer.append(dict[w]!)
            w = ""
            continue
        }
        w += c
        count += 1
    }
  
  
    answer.append(dict[w]!)
    print(answer)
    return answer
}
solution("TOBEORNOTTOBEORTOBEORNOT")

