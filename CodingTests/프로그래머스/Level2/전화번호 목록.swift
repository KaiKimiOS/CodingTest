//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 1/10/24.
//

import Foundation


func solution(phoneBook:[String]) -> Bool {
    
    var phoneBook = phoneBook.sorted(by: <)
    //이게 String이기 때문에 ["119", "1195524421", "120", "97674223"] 이런식으로 정렬이 된다.
    
    var answer = true
 

    for i in 0..<phoneBook.count {

        if i+1 == phoneBook.count {
            return answer
        }
        
        var abc =  phoneBook[i+1].components(separatedBy: phoneBook[i])
    
        if abc.contains("") {
            answer = false
            return answer
        }
    }
    return answer
}

//solution(phoneBook:["119", "97674223", "1195524421","120"])
//
//이것도 가능하고 좀 더 빠름
//if phoneBook[i+1].starts(with: "\(phoneBook[i])") {
//   return false
//}
