import UIKit
import Foundation


func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    
    var kai = my_string.map { String($0)
    }
    var result = kai
    result[num1] = kai[num2]
    result[num2] = kai[num1]

    
    return result.joined()
}

solution("hello", 1, 2)
