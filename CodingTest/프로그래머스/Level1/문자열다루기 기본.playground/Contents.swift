import UIKit

func solution(_ s:String) -> Bool {

    guard s.count == 4 || s.count == 6 else {return false}
    for i in s {
        
        if i.isLetter {
            return false
        } else if i.isNumber { continue}
    }
    
    return true
}

solution("1251")


func solution1(_ s:String) -> Bool {
    
    var seah =  Int(s)
    
    return Int(s) != nil && (s.count == 4 || s.count == 6) ? true :  false
}

solution1("125A")
