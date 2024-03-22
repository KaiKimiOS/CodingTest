//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 3/20/24.
//
import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    
    let (basicTime,basicCost,costPerMin,costWon) = (fees[0],fees[1],fees[2],fees[3])
    
    var inDictionary : [String:[Int]] = [:]
    var outDictionary : [String:[Int]] = [:]
    var answerDictionary: [String:Int] = [:]
    var endTime = 1439
    
    for car in records {
        let car = car.split(separator: " ").compactMap { String($0) }
        
        //변수 한번에 쓰기
        let (timeString, carNumber, direction) = (car[0], car[1], car[2])
        let time = timeString.split(separator: ":").compactMap { Int($0) }
        
        let totalTime = (time[0] * 60) + time[1]
        
        //dictionary 초기값 설정해주기
        direction == "IN" ?  (inDictionary[carNumber,default: []].append(totalTime)) : (outDictionary[carNumber, default: []].append(totalTime))
        
    }
    
    //최종가격 계산함수
    func calcultePayMoney(totalTime:Int) -> Int {
        
        return basicCost + Int(ceil(Double(totalTime - basicTime) / Double(costPerMin))) * costWon
    }
    
    //answerDic에 최종 계산가격 넣어주는 함수
    func putAnswer(finalTime:Int, totalCost:Int, key:String) {
        
        finalTime < basicTime ? (answerDictionary[key, default: 0] = basicCost) : (answerDictionary[key, default: 0] = totalCost)
    }
    
    //dic 순서를 보장할 수 없으니 정렬해주기, Indictionary에서 출차안된게 있을 경우, 해당항목이 마지막이 되도록 만들기 위해
    var sortedInDictionary = inDictionary.mapValues { $0.sorted(by: <)  }
    
    for (key,value) in sortedInDictionary {
        var inTime = value.reduce(0,+ )
        if let now = outDictionary[key] {
            var outTime = now.reduce(0, +)
            var totalTime = outTime - inTime
            var totalCost = calcultePayMoney(totalTime: totalTime)
            
            //IN과 OUT이 똑같다면
            if value.count == now.count {
                
                putAnswer(finalTime: totalTime, totalCost: totalCost, key: key)
                
                
            } else {
                //IN과 OUT이 똑같지 않다면, 출차 안한것 계산해주기
                var temp = value.last!
                var tempTime = inTime - temp
                var totalTime = (outTime - tempTime) + (endTime - temp)
                var totalCost = calcultePayMoney(totalTime: totalTime)
                putAnswer(finalTime: totalTime, totalCost: totalCost, key: key)
            }
        }  else {
            //예제 3번 대응 [1, 461, 1, 10] ["00:00 1234 IN"]
            var totalTime = endTime - inTime
            var totalCost = calcultePayMoney(totalTime: totalTime)
            putAnswer(finalTime: totalTime, totalCost: totalCost, key: key)
            
        }
    }
    
    var finalAnswer = answerDictionary.sorted { $0.key < $1.key  }.map { $0.value }
    
    return finalAnswer
}

solution([180, 5000, 10, 600],["05:34 5961 IN", "06:00 0000 IN", "06:34 0000 OUT", "07:59 5961 OUT", "07:59 0148 IN", "18:59 0000 IN", "19:09 0148 OUT", "22:59 5961 IN", "23:00 5961 OUT"])
