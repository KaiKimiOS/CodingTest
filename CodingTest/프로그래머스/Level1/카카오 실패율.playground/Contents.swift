import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    

    var usingDictionary: [Int: Double] = [:] //딕셔너리 활용
    var firstStageNumber = stages.sorted(by: <).first // stages에 있는 가장 첫번째 stage
    var count = Int() // 각 스테이지에 몇명이 있는지 숫자 세기
    var people = stages.count // 실패율 분모
    
    for i in stages.sorted(by: <) where i <= N{
        
        if firstStageNumber == i {
            count += 1 //같으면 +1
            usingDictionary.updateValue(Double(count), forKey: firstStageNumber!)
            
            
        } else if firstStageNumber != i {
            //다르면 그전에꺼 딕셔너리에 추가하기
            usingDictionary.updateValue(Double(count)/Double(people), forKey: firstStageNumber!)
            people -= count
            count = 1
            firstStageNumber = i
            usingDictionary.updateValue(Double(count), forKey: firstStageNumber!)
            
        }
        usingDictionary.updateValue(Double(count)/Double(people), forKey: firstStageNumber!)
    }
    
    for i in 1...N {
        
        if !usingDictionary.keys.contains(i) {
            usingDictionary.updateValue(0.0, forKey: i)
        }
    }

    var result = usingDictionary.sorted(by: <).sorted{ $0.value > $1.value}
    return  result.map{$0.key}
}
    solution(10, [1,2,1,2,4,5,6,4,5,6,11])

