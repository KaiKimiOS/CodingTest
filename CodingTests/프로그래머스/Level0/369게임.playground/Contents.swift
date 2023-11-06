import UIKit

func solution(_ order:Int) -> Int {
    
    
    
    var kai = String(order).map{$0}
    var result = 0
    var game = ["3", "6", "9"]
    
    
    for i in game {
        
        for k in kai {
            if   i == String(k) {
                result += 1
            }
        }
        
    }
    return result
}
solution(3933336)
