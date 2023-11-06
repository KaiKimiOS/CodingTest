import UIKit


func solution(_ n:Int) -> Int
{
    var answer:Int = 0

    var result = String(n).map { Int(String($0))!
    }.reduce(0) {$0 + $1
    }
   
   
    
   
    
    return result
}

solution()
