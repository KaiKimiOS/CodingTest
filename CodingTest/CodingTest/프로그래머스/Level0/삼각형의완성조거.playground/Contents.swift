import UIKit


func solution(_ sides:[Int]) -> Int {
                                   
    var kai = sides.sorted(by: >)
    
   
    return kai[0] < kai[1] + kai[2] ? 1 : 2
}

solution([3,6,2])
