import UIKit

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {

//    var a1 = zip(arr1, arr2).map{zip($0, $1).map{$0+$1}}
    return zip(arr1, arr2).map{zip($0,$1).map{$0+$1}}
 

}

solution([[1,2],[3,4] ], [[3,4],[5,6]])
