import UIKit

func solution(_ n:Int, _ t:Int) -> Int {
    var kai =  n // 2
     //0
    for i in 1...t {
     kai *= 2
        
    }
    return  kai
}


solution(7, 15)
