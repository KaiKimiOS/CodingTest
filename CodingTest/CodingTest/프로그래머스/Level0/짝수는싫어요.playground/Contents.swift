import Foundation

func solution(_ n:Int) -> [Int] {
    var abcd: [Int] = []
    
    for i in 1...n {
        if i % 2 == 1 {
            abcd.append(i)
        }
     
    }

    return abcd
}

solution(10)

//abcd.append(i) 말고 다른 방법 뭐가 있을까?
