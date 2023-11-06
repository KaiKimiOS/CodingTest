import UIKit

func solution(_ phone_number:String) -> String {
    
    var case1 = phone_number.map { String($0)
    }
    var aa  = phone_number.count - 4
   


    for i in 0..<aa{

        case1[i] = "*"
    }

    phone_number.suffix(4)
    
    return case1.joined()
}

solution("01033334444")
