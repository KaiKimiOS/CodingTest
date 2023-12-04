//
//  가장 큰 수.swift
//  CodingTests
//
//  Created by kaikim on 2023/11/10.
//

import Foundation

func solution(_ numbers:[Int]) -> String {
    
    let answer = numbers.map { String($0) }.sorted { $0+$1 > $1+$0 }.joined()
    //sort를 잘해야한다.
    //String에서 문자열 내림차순 방법은
    //6,10,2가 있으면 맨 앞자리만 비교한다 6 > 2 > 10이 된다.
    // 2 > 10 보다 큰 이유는 앞자리가 2가 더 크니까 뒤에는 보지 않고 2 > 10 이 된다
    //마치 Apple, Zebra , Car,  -> Apple, Car, Zebra 처럼
    
    if let result = Int(answer) { return String(result)} // [0,0,0] 처리해주기
    
    return answer
}


