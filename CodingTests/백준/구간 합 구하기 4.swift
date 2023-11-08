//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 2023/11/07.
//

//구간 합 구하기 4 - 11659


// MARK: - 누적 합으로 구하기
// MARK: - N, M 이 모두 <= 100,000 이내이기 때문에 N^2 이내의 시간복잡도가 필요하다

import Foundation

var answer: [Int] = [0]
var temp = 0


// MARK: - 예제 5,3에서 5는 나올 수의 갯수 -> 2번째 readLine에서 5개의 숫자가 나온다. 3은 출력을 위한 실행 횟수.
var firstReadLine = readLine()!.split(separator: " ").compactMap { Int(String($0))}

// MARK: - 처음 받아온 예제가 5이기 때문에, 5개의 숫자 (5, 4, 3, 2, 1) 을 받아온다
var secondReadLine = readLine()!.split(separator: " ").compactMap { Int(String($0))}

// MARK: - 5,4,3,2,1 을 누적합을 해준다 -> answer에는 [0,5,9,12,14,15]이 담긴다, 누적합 배열 순서를 맞게 하기 위해 처음 [0] 넣어줌
for i in secondReadLine {
    
    temp += i
    answer.append(temp)
    
}


// MARK: - 첫번째 5,3 에서 3인 3번을 계산해야한다. 만약 1,3이라면 1...3을 더해야한다 5 + 4 + 3 = 12 반대로 누적합 12-0을 해주면 똑같아진다.
// MARK: - 예제 2,4 를 예로  즉 [5,4,3,2,1] 에서 2...4 를 더한다 -> 4 + 3 + 2 = 9 반대로 누적합 14 - 5 = 9
func calculate(start: Int, end: Int) -> Int {
    let result = answer[end] -  answer[start-1]
    return result
}

for _ in 0..<firstReadLine[1] {
    let temp1 = readLine()!.split(separator: " ").compactMap { Int(String($0)) }
    let finalResult = calculate(start: temp1[0], end: temp1[1])
    print(finalResult)
    
}



