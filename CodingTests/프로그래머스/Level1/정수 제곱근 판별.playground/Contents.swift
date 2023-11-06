import UIKit
func solution(_ n:Int64) -> Int64 {
    
    var a : Int64 = 1
  guard n < 50000000000000 && n > 0 else {return -1}
    
    while a * a < n {
        
        a += 1
    }
    
    
    return a * a == n ? (a+1) * (a+1) : -1
}
   

    
solution(0000)

// 애 먹은 이유는 아래와 같은 제한 사항 때문이다

//n은 1이상, 50000000000000 이하인 양의 정수입니다
// 또한 for i in 1...n 까지의 계속적인 반복문이 아닌 while로 빠르게 끊어주는게 좋아보인다// i * i 이기 때문에 1...n 전에 이미 끝나는 수이다


