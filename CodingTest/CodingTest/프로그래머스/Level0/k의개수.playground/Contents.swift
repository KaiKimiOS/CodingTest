import UIKit


func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    
        var str = String()
        for num in i...j {
    
            str += "\(num)"
        }
    
    print(str)
    var kakakak = str.filter { String($0) == String(k)
    }.count
  
    return kakakak
}

solution(1 , 13, 1)
