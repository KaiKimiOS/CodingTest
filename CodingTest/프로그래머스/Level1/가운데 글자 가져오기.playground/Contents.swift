import UIKit

func solution(_ s:String) -> String {
    
    var a = Array(s)
    var case1 =  s.count
    
    if case1 % 2 != 0 {
        
        
        return String(a[ case1 / 2])
    } else {
        
        return String(a[case1/2 - 1]) + String(a[case1 / 2])
    }
    return "그냥넣음"
}


solution("abcdfe")
