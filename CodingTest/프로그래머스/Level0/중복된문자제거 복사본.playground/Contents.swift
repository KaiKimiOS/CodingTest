import UIKit
func solution(_ my_string:String) -> String {
    
    var result = ""
    
    for i in my_string{
        
        if !result.contains(i) {
            result += String(i)
            
            print(result)}
    }
    
    print(result)
  
    return result
}



solution("kai is kai")

//배열에 people을 넣어주고
//배열안에 중복되면 넣어주지마

