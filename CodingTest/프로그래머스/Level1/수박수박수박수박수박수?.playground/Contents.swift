import UIKit


func solution(_ n:Int) -> String {
    
  var case1 = "수박"

    var result = ""
    
    while result.count < n {
        
        for i in case1 {
            
            if result.count < n {
                result += String(i)
            } else { break}
            
            
        }
        
    }

    
    
    
    
    return result
}

solution(5)


나와 다른풀이
func solution(_ n:Int) -> String {
    return "\(String(repeating: "수박", count: n / 2))\(n % 2 == 0 ? "" : "수")"
    
     " 출력 전체에서 \(String(repeating: "수박", count: n / 2))"
    "(n % 2 == 0 ? "" : "수")" 이렇게 두개가 따로임
    짝수일때 "수", 홀수 일대 "박"
}
