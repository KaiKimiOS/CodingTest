//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 1/30/24.
//


import Foundation

func solution(_ numbers:String) -> Int {

    //fisrValue 이어서 붙이면서 모든 경우의 수를 numberSet에 넣어줄것임
    var firstValue = ""
    
    //중복된 수 제거를 위한 Set 사용
    var numberSet:Set<Double> = []
    
    //최종 결과값
    var result = 0
    
    //소수인지 아닌지 판별하기
    func prime(_ number:Double) -> Bool {
        
        // 0, 1 소수가 아니다
        if number == 0 || number == 1 {
            return false
        }
        
        //2는 소수이다
        if number == 2 {
            return true
        }
        
        //해당 값의 루트를 해서 나온 값 만큼만 반복문 돌려도 된다. 소수 구하는법임 숫자가 4이면 sqrt(36) -> 6 만큼 돌리기만 해도 소수가 판별된다.
        //반복문의 횟수가 36 -> 6 번으로 낮아진다.
        var rootValue = round(sqrt((number)))

        for i in 2...Int(rootValue) {
            if Int(number) % i == 0 {
                return false
            }
        }
        return true
    }
    
    //DFS 함수
    func dfs(_ comb:String, _ others:String) {
       
       
        if comb != "" {
            //값이 있을경우 무조건 넣어주기
            numberSet.insert(Double(comb)!)
        }
        
        for i in 0..<others.count {
            var others = others
            //⭐️ range, dfs에 뭐를 넘겨줄지, 이게 핵심이다
            //String Index 변환의 어려움..
            var range = others.remove(at: others.index(others.startIndex, offsetBy: i))
            
            //17의 경우에 comb = ""에 others에서 제거된 range = 1을 추가해주고, others에서 제거된 1을 제외한 나머지 7를 넘겨준다.
            dfs(comb + String(range), others)
        }
    }
    
    dfs("", numbers)
    
    for i in numberSet {
        if prime(i) {
            result += 1
        }
    }

    print(result)
    return result
}

//solution("17")
