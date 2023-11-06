import UIKit

func solution(_ before:String, _ after:String) -> Int {
    
    var result = ""
    
    var a1 = before.sorted(by: <)
    var a2 = after.sorted(by: <)
   
    //리버스를 하는게 아니라
    //순서를 막 바꿔서 이게 되는지 보는거
    
    
    
    return a1 == a2 ? 1 : 0
}

solution("olleh", "hello")

