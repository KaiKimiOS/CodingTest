//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 1/8/24.
//

import Foundation

func solution(participant:[String], completion:[String]) -> String {
    
    var participant = participant
    var completion = completion
    
    var dictionary: [String:Int] = [:]
    var answer = " "
    
    for i in 0..<participant.count {
        dictionary[participant[i]] =  dictionary[participant[i]] == 1 ? dictionary[participant[i]]! + 1 : 1
        
        //        if dictionary[participant[i]] == 1 {
        //            dictionary[participant[i]]! += 1
        //        } else {
        //            dictionary[participant[i]] = 1 }
    }
    
    for i in completion {
        if dictionary[i]! > 0 {
            dictionary[i]! -= 1
        }
        if dictionary[i] == 0 {
            dictionary.removeValue(forKey: i)
        }
    }
    
    answer = dictionary.keys.first!

    return answer
}

//solution(participant: ["mislav", "stanko", "mislav", "ana"], completion:["stanko", "ana", "mislav"])
