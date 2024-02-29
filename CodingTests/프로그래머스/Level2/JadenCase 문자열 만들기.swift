//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 2/29/24.
//

import Foundation
func solution(_ s:String) -> String {
    
    //split 사용시 공백이 사라짐 주의
    //s에서 문자열을 하나씩 뺀다
    //만약 숫자라면 result에 넣어준다
    //숫자가 아니라면 result값을 확인한다
    //만약 result.last == " " || result.isEmpty -> result에 uppercased로 넣어주기
    //그렇지 않으면 result에 lowercased로 넣어주기
    
    var result:String = ""
  
    s.forEach {$0.isNumber ? result.append($0) :(result.last == " " || result.isEmpty) ? result.append($0.uppercased()) :result.append($0.lowercased()) }
    
    return result
    
    
}
//solution(" for the last week ")
//반례
//" for the last week "
//답: " For The Last Week "
//
//" "
//답: " "


