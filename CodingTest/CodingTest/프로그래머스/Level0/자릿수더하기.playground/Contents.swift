import UIKit

func solution(_ n:Int) -> Int {
   
    
    var kai = String(n).map { Int(String($0))!}
    //파라미터 n을 먼저 String(n)으로 바꾼다
    // .map을 통해서 하나씩 찍어야함
    //이 때 n에서 map하면 String.element가 되니까 String($0) 해주고 다시 그걸 Int()!로 감싸준다
    
  
    
    var result = 0
    
    for abc in kai {
        
        result += abc
    }
    
    
    return result
}

solution(123)


return String(n).map{Int(String($0))! }.reduce(0,+)
