import UIKit



func solution(_ my_string:String) -> String {
    
    var kai = my_string.map { String($0)}

    var result = String()
    
    for i in kai {
        
        if i == i.lowercased() {
           
            result += i.uppercased()
        } else { i.uppercased()
            result  += i.lowercased()
        }
            
            
    }
  
    return result
}

solution("cccCCC")

for c in my_string {
    
    result += String(c) == c.lowercased() ? c.uppercased() : c.lowercased()
}
