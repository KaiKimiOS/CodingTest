//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 3/19/24.
//
import Foundation

func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
    //투포인터 문제
    var totalQue = queue1 + queue2
    var totalSum =  totalQue.reduce(0) { $0 + $1 }
    var targetSum = totalSum / 2
    var que1Sum = queue1.reduce(0,+)
    
    //ex) totalQue = [3, 2, 7, 2] + [4, 6, 5, 1]
    var left = 0 //왼쪽인덱스 시작점
    var right = queue2.count //오른쪽인덱스 시작점 4
    var answer = 0
    
    guard targetSum is Int else { return -1 }

    //11, 18번 coredump 발생이유
    //leftCount <= tempQue1.count &&  rightCount < tempQue1.count
    //즉 왼쪽인덱스와 오른쪽인덱스의 제한사항을 안걸어둬서 발생한것이다.
    while left <= totalQue.count &&  right <  totalQue.count {
        
        guard targetSum != que1Sum else {return answer}
        
        if que1Sum < targetSum {
            que1Sum += totalQue[right]
            right += 1
        } else {
            que1Sum -= totalQue[left]
            left += 1
        }
        answer += 1
    }
    
    return -1
}
