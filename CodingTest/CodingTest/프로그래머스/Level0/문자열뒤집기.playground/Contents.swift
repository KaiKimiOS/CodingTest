import UIKit

func solution(_ my_string:String) -> String {
    
    var kai =  String(my_string.reversed())
    
    return kai
}

solution("hello")
// my_string.reversed() 실행으로 ReversedCollection 이 된 kai를 다시 String(my_string.reversed()) 으로 감싸서 kai를 String으로 만들어준다
