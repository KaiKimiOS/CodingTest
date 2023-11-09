//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 2023/11/09.
//

// MARK: - 스택으로 풀긴 풀었지만, 강의를 통해 푼거지 아직 이해 20% 안됨, 다시풀어야함
import Foundation

var N =  Int(readLine()!)!
var numbers = readLine()!.split(separator: " ").compactMap{ Int($0)}
var stack:[Int] = [] //Stack을 담는 배열
var answer: [Int] = [] //결과물 출력함
 
for i in numbers.reversed() {// 뒤에서 부터 넣어준다
    
    while (!stack.isEmpty && stack.last! <= i) { // 7 해당안됨, 2 해당안됨, 5 해당됨✅, 3 해당안됨
        stack.popLast() // 5 -> 2 삭제됨
    }
    
    answer.append(stack.isEmpty ? -1 : stack.last!)
    // 7 -> answer = -1
    // 2 -> answer = 7
    // 5 -> answer = 7
    // 3 -> answer = 5
    // answer = [-1,7,7,5]
    
    stack.append(i)
    // 7 -> stack = 7
    // 2 -> stack = 2
    // 5 -> stack = 5
    // 3 -> stack = 3
    // stack = [7,5,3] 2는 5로 인해 삭제됨
}
var finalAnswer = answer.reversed().map{String($0)}.joined(separator: " ")
print(finalAnswer)

//예제 입력 
//4
//3 5 2 7
