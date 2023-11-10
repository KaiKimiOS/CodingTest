//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 2023/11/10.
//

import Foundation

var N = Int(readLine()!)!
var countingNumbers = Array(repeating: 0, count: 10001)
// 1~10000 까지의 수가 존재하기 때문에 10000 배열을 만들어준다
// M = 데이터의범위 < 10000 이기 때문에 countingSort 가능

for i in 0..<N {
 
    countingNumbers[Int(readLine()!)!] += 1 // 둘째 줄부터 나오는 숫자 즉 countingNumbers[5] 에 += 1 을 해준다. 만약 5가 두번 나오면 +2 가 되는것
    //
}

var result = ""

for i in 1...10000 {
    result += String(repeating: "\(i)\n", count: countingNumbers[i])
    //숫자가 1~ 10000까지 존재하기 때문에, repeat i를 counting 숫자의 해당 인덱스에 들어 있는 갯수 만큼. 5를 예시로 들면 +2 여서 두번 나온다 5,5
}

print(result)


//그냥 sort(n longN) 쓰면 시간초과 -> counting sort를 이용해서 풀어야함

//• 시간복잡도:O(N)+O(M)(N=데이터수,M=데이터의범위1~M)
//• 공간복잡도:O(M)(M=데이터의범위1~M)
//• 따라서 데이터의 범위가 넓을수록 성능(시간, 공간)이 좋지 않다.
