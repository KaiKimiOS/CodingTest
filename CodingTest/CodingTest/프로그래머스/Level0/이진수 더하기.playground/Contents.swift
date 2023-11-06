import UIKit

func solution(_ bin1:String, _ bin2:String) -> String {

    


    var result1 : Int = Int(bin1, radix:2)!
    var result2 : Int = Int(bin2, radix:2)!
    var result = String(result1 + result2, radix:2)
    
    
    
    return result }


solution("1001", "1111")
