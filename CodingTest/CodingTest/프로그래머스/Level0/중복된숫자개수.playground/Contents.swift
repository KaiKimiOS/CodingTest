import UIKit

func solution(_ array:[Int], _ n:Int) -> Int {
   
    var kai  =  array.filter { $0 == n
    }.count
   
   return kai
}

solution([1,2,3,4,], 1)
