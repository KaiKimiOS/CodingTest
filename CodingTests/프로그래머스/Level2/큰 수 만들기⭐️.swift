//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 2/22/24.
//


import Foundation

func solution(_ number:String, _ k:Int) -> String {
    var stack:[Character] = []
    var k = k
    
    //⭐️ stack.last 마지막이 number i보다 작으면 스택에서 빼주기, while let으로 옵셔널처리 해주기
    for i in number {
        while let last = stack.last, last < i, k > 0 {
            k -= 1
            stack.removeLast()
            print(k)
            
        }
        stack.append(i)
    }
    
    if k != 0 {
        stack.removeLast(k)
        //⭐️ ["1,9,2,4"], k= 2라면 뒤에서 2개 다 삭제 [1,9]만 남는다
        //k = 3이라면 [1]만 남는다, 뒤에서부터 3개 삭제
    }
    print(stack)
    return String(stack)
}
solution("19243", 2)

//풀이방법 Ex["1924"], k = 2

// 반복문 1 등장 -> while 해당안됨(스택 비어있기에) -> while 건너뜀 -> 스택에 1 append
// 반복문 9 등장 -> while 해당됨(9 > 1) -> k -= 1, 스택1제거 -> 스택에 9 append, k = 1
// 반복문 2 등장 -> while 해당안됨(9 > 2) -> while 건너뜀 -> 스택에 2 append [9,2]
// 반복문 4 등장 -> while 해당됨(4 > 2) -> k -= 1, 스택 2제거 -> 스택에 4 append [9,4] , k = 0
// 반복문 종료, stack = [9,4] -> 정답은 94

// 만약 k = 3 이라면, 반복문이 종료되고 k = 1 이다
// if k != 0 실행 -> removelast(k) -> 스택 4 제거 -> 정답은 9


