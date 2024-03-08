//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 3/8/24.
//

import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    
    
    var nChanged = String(n, radix: k).split(separator: "0")
    var newArray:[String] = []
    var result = 0
    func isPrime(n:String) -> Bool {
        var number = Int(n)
        
        //각 자릿수에 0이 있는지 체크하기
        for i in n {
            if i == "0" {
                return false
            }
        }
        // 0, 1 소수가 아니다
        if number == 0 || number == 1 {
            return false
        }
        
        //2는 소수이다
        if number == 2 {
            return true
        }
        
        //해당 number를 루트 씌운 값만 반복문 돌려도 소수는 나온다
        // number -> 36이라면 루트씌운 값인 6만큼만 돌려도 나옴
        //즉 0...36 까지의 반복문이 0...6 으로 줄어드는 효과 -> 시간효율 굿
        var rootValue = round(sqrt(Double(number!)))
        
        //범위를 2..<rootValue ❌ -> 14,16 번 케이스 틀림
        //범위를 2...rootValue ✅
        for i in 2...Int(rootValue) {
            if number! % i == 0 {
                return false
            }
        }
        return true
    }

    for i in nChanged {
        newArray.append(String(i))
        newArray.append("0")
    }
    
    for i in newArray {
        if isPrime(n: i) {
            result += 1
        }
    }
    
    return result
}
