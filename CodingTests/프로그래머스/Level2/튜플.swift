//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 3/6/24.
//

import Foundation

func solution(_ s:String) -> [Int] {
    
    //"{{2},{2,1},{2,1,3},{2,1,3,4}}"
    
    //{ , } 제거하기
    // "," 기준으로 Int로 변환하기
    //dictionary 배열 만들고, 2-4, 1-3, 3-2, 4-1 키와 값으로 넣어준다
    //dictionary 정렬 후 키 값만 return 한다
    var filteredString:String = s.replacingOccurrences(of: "{", with: "").replacingOccurrences(of: "}", with: "")
    var numbers:[Int] = filteredString.split(separator: ",").map { Int(String($0))! }
    
    var dic:[Int:Int] = [:]
    
    for i in numbers {
        if dic[i] != nil {
            dic[i]! += 1
        } else {
            dic[i] = 1
        }
    }
    
    var answer = dic.sorted { $0.value > $1.value }.map { $0.key }
    return answer
}

