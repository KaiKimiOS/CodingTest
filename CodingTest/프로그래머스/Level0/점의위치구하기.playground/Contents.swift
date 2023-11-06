import UIKit

func solution(_ dot:[Int]) -> Int {
  
    
    var kai: Int = 0
    if dot[0] > 0 && dot[1] > 0 {
        kai = 1} else if dot[0] < 0 && dot[1] > 0 {
            kai = 2} else if dot[0] < 0 && dot[1] < 0 {
                kai = 3} else if dot[0] > 0 && dot[1] < 0 { kai = 4}


return kai

}

solution([4,5])

//var abc : [Int] = [1,2]
//
//abc[0]
