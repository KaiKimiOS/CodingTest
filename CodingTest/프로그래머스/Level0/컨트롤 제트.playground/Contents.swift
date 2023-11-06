import UIKit

func solution(_ s:String) -> Int {
    
    
    var kai =    s.split(separator: " ")
    var result = 0
    
    for (i,j) in kai.enumerated() {
        
        if j == "Z" {
            result -= Int(String(kai[i-1]))!
        } else {
            
            result += Int(j)!
        }
        
        
    }

        return result
        
     
    }
    solution("10 20 Z 30 40")

//(split으로 "10 20 30" 사이 공백 제거 및  enumerate를 활용하여 key, value를 활용하기
