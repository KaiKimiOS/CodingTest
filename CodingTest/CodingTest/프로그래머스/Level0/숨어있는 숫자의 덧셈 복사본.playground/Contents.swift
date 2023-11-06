import UIKit

func solution(_ my_string:String) -> Int {
    
    
    
    return my_string.split { $0.isLetter
    }.reduce(0) { Int($0) + Int($1)!
    }
}

solution("aAb1B2cC34oOp")

