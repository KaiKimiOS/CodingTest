import Foundation

func solution(_ s:String) -> Int {
    var result = String()
    
    
    var a1 = String()
    var alphabet: [String] = ["zero",  "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    
    var kai = s
    for i in kai {
        
        if i.isLetter {
            a1 += String(i)
            if alphabet.contains(a1) {
                
                
                for (k,j) in alphabet.enumerated() {
                    
                    if a1 == j {
                        
                        result += String(k)
             
                        
                        a1 = ""
                    }
                    
                }
            } else {continue}
        } else { result += String(i)
            
        }
        
        
    }
  
  
    return Int(result)!
}

solution("23four5six7")





func solution1(_ s:String) -> Int {


    var s = s
        var answer = s.replacingOccurrences(of: "zero", with: "0")
            .replacingOccurrences(of: "one", with: "1")
            .replacingOccurrences(of: "two", with: "2")
            .replacingOccurrences(of: "three", with: "3")
            .replacingOccurrences(of: "four", with: "4")
            .replacingOccurrences(of: "five", with: "5")
            .replacingOccurrences(of: "six", with: "6")
            .replacingOccurrences(of: "seven", with: "7")
            .replacingOccurrences(of: "eight", with: "8")
            .replacingOccurrences(of: "nine", with: "9")

    return Int(answer)!
}

solution1("23four5six7")
