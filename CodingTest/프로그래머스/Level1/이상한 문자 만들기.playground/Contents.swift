import UIKit


func solution(_ s:String) -> String {
    
    
    var result = [String]()
    
    var x = 0
    
    for i in s {
        
        if x % 2 == 0 {
            result.append(String(i.uppercased()))
        } else { result.append(String(i.lowercased()))}
        x += 1
        
        if i == " " {
            x = 0
        }
        

    }
    
    return result.joined()}
solution("try hello world")
