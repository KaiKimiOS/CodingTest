//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 3/5/24.
//

import Foundation

func solution(_ s:String) -> Int{
    
    var s = Array(s)
    print(s)
    var stack:[Character] = []

    // 스택이 비어있지 않고, 스택의 마지막 값이 i와 같으면 stack에서 지운다
    // 그렇지 않으면 스택에 추가한다
    // b 추가 [b]
    // a 추가 [b,a]
    // a 같아서 삭제 [b]
    // b 같아서 삭제 []
    // a 추가 [a]
    // a 같아서 삭제 []
    
    for i in s {
        if !stack.isEmpty && stack.last == i {
            stack.popLast()
        } else {
            stack.append(i)
        }
    }
    return stack.isEmpty ? 1 : 0
}
