import UIKit


func solution(_ n:Int64) -> [Int] {
    
    
    String(n).compactMap { Int(String($0))
    }
    
    return String(n).compactMap { Int(String($0))
    }.reversed()
    // nil을 제거하고 옵셔널 바인딩을 하고싶으실때는 compactMap 사용
}

solution(12345)
