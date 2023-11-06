import UIKit



import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    
  
    return array.min {(abs($0 - n), $0) < (abs($1 - n), $1)
    }!
}


solution([10,11,13,14], 12)


//튜플의 비교


abs($0 - n), $0     abs($1 - n), $1)


먼저  abs($0 - n) abs($1 - n)를 비교하고
이게 같으면 $0, $1을 비교한다
