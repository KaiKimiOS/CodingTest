import UIKit

func solution(_ numbers:String) -> Int64 {
    
    
    var result = numbers
    var alphabet : [String:String] = ["zero": "0", "one" : "1","two": "2", "three": "3", "four":"4", "five":"5", "six": "6", "seven": "7", "eight": "8", "nine":"9"]
    
    
    for i in alphabet {
        // replacingOccurrences를 사용하여 영어(of)를 숫자(with)로 바꾼다
        result = result.replacingOccurrences(of: i.key , with: i.value)
    }
    
return Int64(result)!
}

solution("onetwothreefourfivesixseveneightnine")
