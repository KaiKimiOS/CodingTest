import UIKit
func solution(_ array:[Int]) -> Int {
    
    var arr = array
    arr.sort()
    return arr[arr.count / 2]
}
solution([5,6,1324,3,51,53,51])
