import UIKit

func solution(_ my_string:String) -> String {
    
    
    var kai = Array(my_string) // 배열로 담아주기
    var abcd: [Character] = ["a", "e", "i", "o", "u"] // 모음을 배열에 담아주기
    var kai123 = String() // 빈 String 만들어주기
    
    for aaa in kai {
        
        if !abcd.contains(aaa) { // 반복문을 통해서 만약 모을배열이 aaa를 포함하지 않는다면
        kai123 += String(aaa) // 빈 String에 담아주기
        } else {continue}
    }
    
    

    return kai123
    
    
    }


solution("bus")


// my_string.filter { !["a", "e", "i", "o", "u"].contains($0)}


