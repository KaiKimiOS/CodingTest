//
//  mian.swift
//  CodingTests
//
//  Created by kaikim on 1/11/24.
//

import Foundation

func solution(_ clothes:[[String]]) -> Int {
    
    var dictionaryArray: [String:Int] = [:]
    for i in 0..<clothes.count {
        
        if dictionaryArray[clothes[i][1]] == nil {
            dictionaryArray[clothes[i][1]] = 1
            continue
        }
        if dictionaryArray[clothes[i][1]]! > 0 {
            dictionaryArray[clothes[i][1]]! += 1
        }
            
    }
 
    var temp = dictionaryArray.values.map { ($0 + 1) } // 안 입는다는 경우의수를 1 해준다
    
    var result = dictionaryArray.values.reduce(0) { $0 + $1  }

    var answer = temp.reduce(1) {   $0  * $1   }

    return dictionaryArray.count == 1 ? result : answer - 1
    
}


//테스트 케이스 1번의 경우
//모자 1개, 안경 2개가 주어집니다.
//모자: 1번 모자를 입는 경우, 입지 않는 경우
//안경: 1번 안경, 2번 안경, 입지 않는 경우
//따라서 모든 경우의 수를 구하면 (1 + 1) * (2 + 1) - 1 인 5가 정답이 됩니다. (앞서 말한대로 모두 입지 않은 경우인 1을 뺍니다.)
//이렇게 조금씩 확장하면 이 문제는
//각 종류에 해당하는 의류의 개수를 구한다. (hash map)
//각 종류에 해당하는 의류의 개수에 1을 더한 뒤 각각 곱한다.
//모두 입지 않은 경우인 1을 뺀다
//이렇게 요약할 수 있겠습니다.
