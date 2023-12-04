//
//  오픈채팅방.swift
//  CodingTests
//
//  Created by kaikim on 2023/12/05.
//

import Foundation


func solution(_ record:[String]) -> [String] {
    
    var userIDWithNickName:[String: String] = Dictionary()
    var message:[String: String] = ["Enter":"님이 들어왔습니다.", "Leave":"님이 나갔습니다."]
    var answerArray:[String] = Array()

    
    for i in record {
        var splitTempArray = i.split(separator: " ")
        if splitTempArray.count == 3 {
            userIDWithNickName.updateValue(String(splitTempArray[2]), forKey: String(splitTempArray[1]))
        }
    }
    
    for i in record {
        var splitTempArray = i.split(separator: " ")
        if message.keys.contains(String(splitTempArray[0])) {
            answerArray.append(userIDWithNickName[String(splitTempArray[1])]!+message[String(splitTempArray[0])]!)
        }

        
        
    }
  
    return answerArray
}

solution(["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"])
