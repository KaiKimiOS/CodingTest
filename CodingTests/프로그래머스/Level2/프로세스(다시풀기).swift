//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 1/15/24.
//

import Foundation

func solution(_ priorities:[Int],_ location:Int) -> Int {
    
    //1. 튜플로 (해당 인덱스: priorities) 를 저장한다. 결국 priorities에서 location이 무엇인지를 요구하는 문제.
    var tuplePriorities: [(Int,Int)] = []
    //2. 우선순위가 저장되는 배열이다. ex) solution([2, 1, 3, 2], 2) -> [3,2,2,1]
    var result:[Int] = []
    
    //3. 튜플에 해당 인덱스와 해당 priorities[i] 를 저장한다
    for i in 0..<priorities.count {
        tuplePriorities.append((i,priorities[i]))
    }
    
    //핵심로직⭐️
    //설명1: 튜플로 저장된 값들을 하나씩 꺼내서, 꺼낸값보다 최댓값이 존재하면 다시 append를 통해 스택처럼 후순위로 넣어준다.
    //설명2: 존재하지 않는다면 result배열에 해당 인덱스를 넣어주고, 해당 값을 튜플에서 삭제해준다
    //설명3: 결국 tuple이 0이 되면 종료된다
    while tuplePriorities.count > 0 {
        
        //튜플에서 Max값을 찾는다
        if let existingMaxTuple = tuplePriorities.max{ $0.1 < $1.1} {
            
            //해당 맥스값을 넣어준다
            let maxValue = existingMaxTuple.1
            print("1️⃣ MAXVALUE  = \(maxValue)")
            
            // 맥스값이 튜플의 첫번째 값보다 큰지 안큰지 확인한다
            if maxValue > tuplePriorities[0].1 {
                //튜플의 첫번째 값보다 크면, 해당 튜플은 삭제하고 다시 뒤로 넣어준다
                tuplePriorities.append(tuplePriorities[0])
                print("2️⃣ tuplePriorities[0]  = \(tuplePriorities[0])")
                tuplePriorities.removeFirst()
            } else {
                // 맥스값이 튜플의 첫번째보다 크지 않다면, 해당 튜플을 result에 넣어주고, 배열에서 삭제시킨다.
                print("3️⃣ tuplePriorities[0]  = \(tuplePriorities[0])")
                result.append(tuplePriorities[0].0)
                tuplePriorities.removeFirst()

            }
        }
    }

    var index = result.firstIndex(of: location)!

    return index + 1
    
}
//solution([1, 1, 9, 1, 1, 1]  , 2)
//[2, 1, 3, 2] 2
// 3221

