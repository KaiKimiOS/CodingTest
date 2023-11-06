import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    
    var result: Set<Int> = []  // 중복 피하기 위한 Set
    
    
    for i in 0..<numbers.count{ // number[0]부터 number[4]

        for j in (i+1)..<numbers.count {
            //이게 어려웠음. (i + 1) 설정해서 항상 number[i]보다 +1 되게 만듬
            
            var a = numbers[i] + numbers[j]
            //number[0] + number[1]
            //number[1] + number[i+1] 즉 number[2]
            
            result.insert(a) // 정답 set에 넣어주기
        }
    }
    
    return result.sorted(by: <) // 정렬
}
solution([5,0,2,7])
