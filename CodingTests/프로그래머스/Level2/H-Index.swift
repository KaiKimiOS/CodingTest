//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 1/29/24.
//

import Foundation

func solution(_ citations:[Int]) -> Int {
    
    var result:[Int] = []
    var Hindex = 0
    
    for i in 1...citations.count {
        for j in citations {
            if j >= i {
                Hindex += 1
            }
        }
        
        if Hindex >= i {
            Hindex = 0
            result.append(i)
            continue
        } else {
            print(i)
            return (i - 1)
//            print(i-1)
//            guard let finalResult = result.last else  { return 0   }
//            print(finalResult)
//            return finalResult
        }
            
    }
    
    
    return result.last!
}
//solution( [3, 4])
//9번,11번 테스트 케이스
//9번 [3, 4] -> 2
//11버[6, 5, 3, 3, 0] ->3
