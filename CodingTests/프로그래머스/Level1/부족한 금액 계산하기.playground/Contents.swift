import UIKit

import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var answer = Int()
   
    for i in 1...count {
        
        answer  += price * i
        
    }
    
    return Int64(answer < money ? 0 : answer - money)
}

solution(3, 20, 4)
